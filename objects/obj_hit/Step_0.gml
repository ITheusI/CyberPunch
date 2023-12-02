/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Step Event of obj_hit
if (time_to_live > 0) {
    time_to_live--;
} else {
    instance_destroy();  // Destrói o objeto quando o tempo de vida atinge zero
}






