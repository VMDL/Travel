package sample.Classi;

import javafx.scene.control.Button;
import sample.Controller_pagina_login;

import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.ArrayList;

public class Model_table_principale
{
    String col_nome_offerta, col_citta, col_tipo, col_link;
    Float col_molto_positivo, col_positivo, col_neutrale, col_negativo, col_molto_negativo;
    Button btn_link, btn_salva;

    public Model_table_principale(String nome_offerta, String citta, String tipo, Float molto_positivo, Float positvo, Float neutrale, Float negativo, Float molto_negativo, String link)
    {
        this.col_nome_offerta = nome_offerta;
        this.col_citta = citta;
        this.col_tipo = tipo;
        this.col_link = link;
        this.col_molto_positivo = molto_positivo;
        this.col_positivo = positvo;
        this.col_neutrale = neutrale;
        this.col_negativo = negativo;
        this.col_molto_negativo = molto_negativo;

        this.btn_link = new Button("Link");
        this.btn_salva = new Button("Salva");

        // LINK
        btn_link.setOnAction(event -> {
            Desktop d = Desktop.getDesktop();
            try
            {
                d.browse(new URI(this.col_link));
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
            catch (URISyntaxException e)
            {
                e.printStackTrace();
            }
        });

        // SALVA
        btn_salva.setOnAction(event -> {
            Controller_pagina_login e = Controller_pagina_login.getInstance();
            Database prova = Database.getInstance();

            try
            {
                ArrayList<String>tuple = new ArrayList<String>();
                tuple.add(e.getUsername_inserito().toLowerCase());
                tuple.add(this.col_link.toLowerCase());

                prova.insertRow("ha", tuple);
            }
            catch (SQLException throwables)
            {
                throwables.printStackTrace();
            }
        });
    }

    public String getCol_nome_offerta() {
        return col_nome_offerta;
    }

    public void setCol_nome_offerta(String col_nome_offerta) {
        this.col_nome_offerta = col_nome_offerta;
    }

    public String getCol_citta() {
        return col_citta;
    }

    public void setCol_citta(String col_citta) {
        this.col_citta = col_citta;
    }

    public String getCol_tipo() {
        return col_tipo;
    }

    public void setCol_tipo(String col_tipo) {
        this.col_tipo = col_tipo;
    }

    public String getCol_link() {
        return col_link;
    }

    public void setCol_link(String col_link) {
        this.col_link = col_link;
    }

    public Float getCol_molto_positivo() {
        return col_molto_positivo;
    }

    public void setCol_molto_positivo(Float col_molto_positivo) {
        this.col_molto_positivo = col_molto_positivo;
    }

    public Float getCol_positivo() {
        return col_positivo;
    }

    public void setCol_positivo(Float col_positivo) {
        this.col_positivo = col_positivo;
    }

    public Float getCol_neutrale() {
        return col_neutrale;
    }

    public void setCol_neutrale(Float col_neutrale) {
        this.col_neutrale = col_neutrale;
    }

    public Float getCol_negativo() {
        return col_negativo;
    }

    public void setCol_negativo(Float col_negativo) {
        this.col_negativo = col_negativo;
    }

    public Float getCol_molto_negativo() {
        return col_molto_negativo;
    }

    public void setCol_molto_negativo(Float col_molto_negativo) {
        this.col_molto_negativo = col_molto_negativo;
    }

    public Button getBtn_link() {
        return btn_link;
    }

    public void setBtn_link(Button btn_link) {
        this.btn_link = btn_link;
    }

    public Button getBtn_salva() {
        return btn_salva;
    }

    public void setBtn_salva(Button btn_salva) {
        this.btn_salva = btn_salva;
    }
}
