//if(room!=last_room) {
//    audio_stop_all();
//    last_room=room;
    switch room {
        case rm_jibbers:
            if(global.current_song!="jibbers") {
                global.current_song="jibbers";
                audio_stop_all();
                audio_play_sound(mus_jibbers, 10, true);
            }
            break;
        case rm_wukong:
            if(global.current_song!="wukong") {
                global.current_song="wukong";
                audio_stop_all();
                audio_play_sound(mus_wukong, 10, true);
            }
            break;
        case rm_cassandra:
            if(global.current_song!="jibbers") {
                global.current_song="jibbers";
                audio_stop_all();
                audio_play_sound(mus_jibbers, 10, true);
            }
            break;
        case rm_panda:
            if(global.current_song!="jibbers") {
                global.current_song="jibbers";
                audio_stop_all();
                audio_play_sound(mus_jibbers, 10, true);
            }
            break;
        case rm_bahamut:
            if(global.current_song!="bahamut") {
                global.current_song="bahamut";
                audio_stop_all();
                audio_play_sound(mus_bahamut, 10, true);
            }
            break;
        case rm_mainMenu:
            if(global.current_song!="main") {
                global.current_song="main";
                audio_stop_all();
                audio_play_sound(mus_main, 10, true);
            }
            break;
        case rm_character_select:
            if(global.current_song!="main") {
                global.current_song="main";
                audio_stop_all();
                audio_play_sound(mus_main, 10, true);
            }
            break;
    }   
//}

