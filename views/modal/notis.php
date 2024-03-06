<!-- SE REALIZARON CAMBIOS EN EL MODAL -->
<!-- Modal -->
<div class="modal fade" id="notis" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      
      <div class="modal-body">

      <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active"  id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">PENDIENTES</a>
            </li>
            <li class="nav-item">
              <a class="nav-link"id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">HISTORIAL</a>
            </li>
          </ul>
        <div class="tab-content" id="v-pills-tabContent">
          <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                      <table class="table">
                          <thead>
                              <tr>
                                <th class="text-center">Id</th>
                                <th class="text-center">Cliente</th>
                                <th class="text-center">Telefono</th>
                                <th class="text-center">Direccion</th>
                                <th class="text-center">Referencia D</th>
                                <th class="text-center">Tipo Servicio</th>
                                <th class="text-center">Problema</th>
                                <th class="text-center"></th>
                            </tr>
                        </thead>
                        <tbody id="noti"></tbody>
                    </table>
            </div>
      
        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                <table class="table">
                      <thead>
                          <tr>
                              <th class="text-center">Id</th>
                              <th class="text-center">Cliente</th>
                              <th class="text-center">Telefono</th>
                              <th class="text-center">Direccion</th>
                              <th class="text-center">Referencia D</th>
                              <th class="text-center">Tipo Servicio</th>
                              <th class="text-center">Problema</th>

                          </tr>
                      </thead>
                      <tbody id="not"></tbody>
                            </table>
        </div>

            </div>
     
            <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">CERRAR</button>
      </div>
    </div>
    
      </div>
      
    </div>
  </div>
</div>