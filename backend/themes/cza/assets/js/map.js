
window.onload = init;
var loc;
var isMapInit = false;
window.addEventListener('message', function(event) {
    // 接收位置信息
//            document.getElementById("geoPage").contentWindow.postMessage("getLocation", "*");
    loc = event.data;
//            console.log('location', loc);
    if(loc  && loc.module == 'geolocation') {
        var location = loc.lng+","+loc.lat;
        var selectid=document.getElementById("start");
        selectid.options.length=0;
        selectid[0]=new Option("出发地",location);
    }
}, false);

var map, transfer_plans, start_marker, end_marker, station_markers = [],
    transfer_lines = [],
    walk_lines = [];

var transferService = new qq.maps.TransferService({
    location: "北京",
    complete: function(result) {
        result = result.detail;
        var start = result.start,
            end = result.end;
        var anchor = new qq.maps.Point(6, 6),
            size = new qq.maps.Size(24, 36),
            start_icon = new qq.maps.MarkerImage('img/busmarker.png', size),
            end_icon = new qq.maps.MarkerImage('img/busmarker.png', size, new qq.maps.Point(24, 0), anchor);

        start_marker && start_marker.setMap(null);
        end_marker && end_marker.setMap(null);
        start_marker = new qq.maps.Marker({
            icon: start_icon,
            position: start.latLng,
            map: map,
            zIndex: 1
        });
        end_marker = new qq.maps.Marker({
            icon: end_icon,
            position: end.latLng,
            map: map,
            zIndex: 1
        });

        transfer_plans = result.plans;
        var plans_desc = [];
        for (var i = 0; i < transfer_plans.length; i++) {
            //plan desc.
            var p_attributes = ['onclick="renderPlan(' + i + ')"', 'onmouseover=this.style.background="#eee"', 'onmouseout=this.style.background="#fff"', 'style="margin-top:-4px;cursor:pointer"'].join(' ');
            plans_desc.push('<p ' + p_attributes + '><b>方案' + (i + 1) + '.</b>');
            var actions = transfer_plans[i].actions;
            for (var j = 0; j < actions.length; j++) {
                var action = actions[j],
                    img_position;
                action.type == qq.maps.TransferActionType.BUS && (img_position = '-38px 0px');
                action.type == qq.maps.TransferActionType.SUBWAY && (img_position = '-57px 0px');
                action.type == qq.maps.TransferActionType.WALK && (img_position = '-76px 0px');

                var action_img = '<span style="margin-bottom: -4px;' + 'display:inline-block;background:url(img/busicon.png) ' + 'no-repeat ' + img_position + ';width:19px;height:19px"></span>&nbsp;&nbsp;';
                plans_desc.push(action_img + action.instructions);
            }
        }
        //方案文本描述
        document.getElementById('plans').innerHTML = plans_desc.join('<br><br>');

        //渲染到地图上
        renderPlan(0);
    }
});

function init() {
    map = new qq.maps.Map(document.getElementById("container"), {
        // 地图的中心地理坐标。
        center: new qq.maps.LatLng(39.916527, 116.397128),
    });

    calcPlan();
}


//调用calcPlan用来判断出行方式
function calcPlan() {
    var start_name = document.getElementById("start").value.split(",");
    var end_name = document.getElementById("end").value.split(",");
    var policy = document.getElementById("policy").value;

    transferService.search(new qq.maps.LatLng(start_name[1], start_name[0]), new qq.maps.LatLng(end_name[1], end_name[0]));

    switch (policy) {
        case "较快捷":
            transferService.setPolicy(qq.maps.TransferActionType.LEAST_TIME);
            break;
        case "少换乘":
            transferService.setPolicy(qq.maps.TransferActionType.LEAST_TRANSFER);
            break;
        case "少步行":
            transferService.setPolicy(qq.maps.TransferActionType.LEAST_WALKING);
            break;
        case "不坐地铁":
            transferService.setPolicy(qq.maps.TransferActionType.NO_SUBWAY);
            break;
    }
}

//清除地图上的marker
function clearOverlay(overlays) {
    var overlay;
    while (overlay = overlays.pop()) {
        overlay.setMap(null);
    }
}

function renderPlan(index) {
    var plan = transfer_plans[index],
        lines = plan.lines,
        walks = plan.walks,
        stations = plan.stations;
    map.fitBounds(plan.bounds);

    //clear overlays;
    clearOverlay(station_markers);
    clearOverlay(transfer_lines);
    clearOverlay(walk_lines);
    var anchor = new qq.maps.Point(6, 6),
        size = new qq.maps.Size(24, 36),
        bus_icon = new qq.maps.MarkerImage('img/busmarker.png', size, new qq.maps.Point(48, 0), anchor),
        subway_icon = new qq.maps.MarkerImage('img/busmarker.png', size, new qq.maps.Point(72, 0), anchor);
    //draw station marker
    for (var j = 0; j < stations.length; j++) {
        var station = stations[j];
        if (station.type == qq.maps.PoiType.SUBWAY_STATION) {
            var station_icon = subway_icon;
        } else {
            var station_icon = bus_icon;
        }
        var station_marker = new qq.maps.Marker({
            icon: station_icon,
            position: station.latLng,
            map: map,
            zIndex: 0
        });
        station_markers.push(station_marker);
    }

    //draw bus line
    for (var j = 0; j < lines.length; j++) {
        var line = lines[j];
        var polyline = new qq.maps.Polyline({
            path: line.path,
            strokeColor: '#3893F9',
            strokeWeight: 6,
            map: map
        });
        transfer_lines.push(polyline);
    }

    //draw walk line
    for (var j = 0; j < walks.length; j++) {
        var walk = walks[j];
        var polyline = new qq.maps.Polyline({
            path: walk.path,
            strokeColor: '#3FD2A3',
            strokeWeight: 6,
            map: map
        });
        walk_lines.push(polyline);
    }
}
/**
 * Created by Administrator on 2017/10/13.
 */
