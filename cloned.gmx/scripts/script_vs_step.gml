if(vs_scale>1) {
    vs_scale-=vs_step_size;
} else if(!created_slider) {
    created_slider=true;
    instance_create(1536,768,obj_vs_slider_right);
}

