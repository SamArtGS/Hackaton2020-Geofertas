//
//  Extras.swift
//  BBVA
//
//  Created by Samuel Arturo Garrido Sánchez on 2020-10-16.
//  Copyright © 2020 SamArtGS. All rights reserved.
//

import UIKit

class Notificaciones: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
        self.navigationItem.title = "Notificaciones"
        
        tablaNotificaciones.delegate = self
        tablaNotificaciones.dataSource = self
        
        
    }
    
    @IBOutlet var tablaNotificaciones: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //TODO: traer la infor de la respuesta del back
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaOfertas") as! CeldaNotificacion
        celda.label_tienda.text = "Liverpool"
        celda.label_nombre_oferta.text = "Tus puntos BBVA te regalan 2 pantallas planas en Liverpool"
        celda.label_vigencia.text = "23 de Noviembre"
        
        return celda
    }
    

    // Tamaño de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func consultarOfertas() {
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
