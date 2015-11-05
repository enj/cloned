if(room!=last_room) {
    audio_stop_all()
    last_room=room;
    switch room {
        case rm_jibbers:
            audio_play_sound(mus_jibbers, 0, true);
            break;
        case rm_wukong:
            audio_play_sound(mus_wukong, 0, true);
            break;
        case rm_pxndx:
            audio_play_sound(mus_pxndx, 0, true);
            break;
        case rm_bahamut:
            audio_play_sound(mus_bahamut, 0, true);
            break;
    }   
}

