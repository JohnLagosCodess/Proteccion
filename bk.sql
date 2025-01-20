-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: sigmel_gestiones
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `cndatos_bandeja_eventos`
--

DROP TABLE IF EXISTS `cndatos_bandeja_eventos`;
/*!50001 DROP VIEW IF EXISTS `cndatos_bandeja_eventos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_bandeja_eventos` AS SELECT 
 1 AS `Id_Eventos`,
 1 AS `Id_cliente`,
 1 AS `Nombre_Cliente`,
 1 AS `Id_Afiliado`,
 1 AS `Nombre_afiliado`,
 1 AS `Tipo_documento`,
 1 AS `Nombre_tipo_documento`,
 1 AS `Direccion`,
 1 AS `Telefono_contacto`,
 1 AS `Nro_identificacion`,
 1 AS `Nombre_afiliado_benefi`,
 1 AS `Apoderado`,
 1 AS `Nombre_apoderado`,
 1 AS `Id_Servicio`,
 1 AS `Nombre_servicio`,
 1 AS `Id_Asignacion`,
 1 AS `Id_Estado_evento`,
 1 AS `Nombre_estado`,
 1 AS `Id_accion`,
 1 AS `Accion`,
 1 AS `Id_profesional`,
 1 AS `Nombre_profesional`,
 1 AS `Id_calificador`,
 1 AS `Nombre_calificador`,
 1 AS `Tipo_Profesional_calificador`,
 1 AS `F_calificacion`,
 1 AS `F_ajuste_calificacion`,
 1 AS `Nombre_evento`,
 1 AS `ID_evento`,
 1 AS `F_evento`,
 1 AS `F_radicacion`,
 1 AS `Nueva_F_radicacion`,
 1 AS `F_registro_asignacion`,
 1 AS `Tiempo_de_gestion`,
 1 AS `Dias_transcurridos_desde_el_evento`,
 1 AS `Empleador_afi`,
 1 AS `Empresa`,
 1 AS `Id_proceso`,
 1 AS `Nombre_proceso_actual`,
 1 AS `Id_proceso_anterior`,
 1 AS `Nombre_proceso_anterior`,
 1 AS `Id_servicio_anterior`,
 1 AS `Nombre_servicio_anterior`,
 1 AS `Fecha_asignacion_al_proceso`,
 1 AS `Asignado_por`,
 1 AS `F_alerta`,
 1 AS `Fecha_alerta`,
 1 AS `F_solicitud_documento`,
 1 AS `F_recepcion_documento`,
 1 AS `Fecha_asignacion_calif`,
 1 AS `Consecutivo_dictamen`,
 1 AS `Fecha_devolucion_comite`,
 1 AS `F_asignacion_pronu_juntas`,
 1 AS `F_accion`,
 1 AS `Modalidad_calificacion`,
 1 AS `Nombre_Modalidad_calificacion`,
 1 AS `Fuente_informacion`,
 1 AS `F_primera_cita`,
 1 AS `Causal_incumplimiento_primera_cita`,
 1 AS `F_segunda_cita`,
 1 AS `Causal_incumplimiento_segunda_cita`,
 1 AS `Nombre_Fuente_informacion`,
 1 AS `F_accion_realizar`,
 1 AS `Accion_realizar`,
 1 AS `Enviar_bd_Notificacion`,
 1 AS `F_Alerta_accion`,
 1 AS `Enviar`,
 1 AS `Estado_Facturacion`,
 1 AS `Causal_devolucion_comite`,
 1 AS `Nombre_Causal_devolucion_comite`,
 1 AS `Descripcion_accion`,
 1 AS `F_cierre`,
 1 AS `Fecha_primer_seguimiento`,
 1 AS `Fecha_segundo_seguimiento`,
 1 AS `Fecha_tercera_seguimiento`,
 1 AS `Fecha_asignacion_dto`,
 1 AS `F_calificacion_servicio`,
 1 AS `Id_afp`,
 1 AS `F_asigna_notifi`,
 1 AS `N_de_orden`,
 1 AS `N_radicado_notifi`,
 1 AS `Asunto_notifi`,
 1 AS `F_envio_notifi`,
 1 AS `Estado_general_notifi`,
 1 AS `Enfermedad_heredada`,
 1 AS `Parte_controvierte_primera_califi`,
 1 AS `Tipo_controversia_primera_califi`,
 1 AS `Termino_controversia_primera_califi`,
 1 AS `Junta_regional_califi_invalidez`,
 1 AS `N_dictamen_Jrci`,
 1 AS `F_radicado_entrada_dictamen_Jrci`,
 1 AS `F_asignacion_pronuncia_junta`,
 1 AS `N_acta_ejecutoria_emitida_Jrci`,
 1 AS `N_radicado_de_recurso_Jrci`,
 1 AS `Termino_controversia_propia_Jrci`,
 1 AS `Parte_controversia_ante_Jrci`,
 1 AS `Tipo_controversia_por_otra_Jrci`,
 1 AS `F_dictamen_jrci_emitido`,
 1 AS `F_acta_ejecutoria_emitida_jrci`,
 1 AS `F_notificacion_recurso_jrci`,
 1 AS `F_noti_ante_jnci`,
 1 AS `Decision_dictamen_jrci`,
 1 AS `Tipo_afiliado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_comunicado_eventos`
--

DROP TABLE IF EXISTS `cndatos_comunicado_eventos`;
/*!50001 DROP VIEW IF EXISTS `cndatos_comunicado_eventos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_comunicado_eventos` AS SELECT 
 1 AS `Id_Eventos`,
 1 AS `ID_evento`,
 1 AS `Apoderado`,
 1 AS `Tipo_afiliado`,
 1 AS `Nro_identificacion_afiliado`,
 1 AS `Nombre_afiliado`,
 1 AS `Nro_identificacion`,
 1 AS `Direccion_afiliado`,
 1 AS `Telefono_contacto`,
 1 AS `Email_afiliado`,
 1 AS `Id_departamento_afiliado`,
 1 AS `Nombre_departamento_afiliado`,
 1 AS `Id_municipio_afiliado`,
 1 AS `Nombre_municipio_afiliado`,
 1 AS `Nombre_empresa`,
 1 AS `Nit_o_cc`,
 1 AS `Direccion_empresa`,
 1 AS `Telefono_empresa`,
 1 AS `Email_empresa`,
 1 AS `Id_departamento_empresa`,
 1 AS `Nombre_departamento_empresa`,
 1 AS `Id_municipio_empresa`,
 1 AS `Nombre_municipio_empresa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_comunicados_radicados`
--

DROP TABLE IF EXISTS `cndatos_comunicados_radicados`;
/*!50001 DROP VIEW IF EXISTS `cndatos_comunicados_radicados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_comunicados_radicados` AS SELECT 
 1 AS `N_radicado`,
 1 AS `Nombre_parametro`,
 1 AS `ID_evento`,
 1 AS `Id_proceso`,
 1 AS `Id_asignacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_eventos`
--

DROP TABLE IF EXISTS `cndatos_eventos`;
/*!50001 DROP VIEW IF EXISTS `cndatos_eventos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_eventos` AS SELECT 
 1 AS `Id_Eventos`,
 1 AS `ID_evento`,
 1 AS `Tipo_documento`,
 1 AS `Nro_identificacion`,
 1 AS `Nombre_afiliado`,
 1 AS `Id_cliente`,
 1 AS `Nombre_Cliente`,
 1 AS `Empresa`,
 1 AS `Nombre_evento`,
 1 AS `F_radicacion`,
 1 AS `F_registro`,
 1 AS `Id_proceso`,
 1 AS `Nombre_proceso`,
 1 AS `Id_Servicio`,
 1 AS `Nombre_servicio`,
 1 AS `Id_Asignacion`,
 1 AS `Id_Estado_evento`,
 1 AS `Visible_Nuevo_Servicio`,
 1 AS `Visible_Nuevo_Proceso`,
 1 AS `Nombre_estado`,
 1 AS `Activador`,
 1 AS `N_radicado_hc`,
 1 AS `Resultado`,
 1 AS `Accion`,
 1 AS `F_accion`,
 1 AS `F_dictamen`,
 1 AS `Nombre_profesional`,
 1 AS `Detalle`,
 1 AS `Id_motivo_solicitud`,
 1 AS `Nombre_solicitud`,
 1 AS `Id_dominancia`,
 1 AS `Nombre_dominancia`,
 1 AS `Tipo_afiliado`,
 1 AS `F_notificacion`,
 1 AS `Visar`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_info_comunicado_eventos`
--

DROP TABLE IF EXISTS `cndatos_info_comunicado_eventos`;
/*!50001 DROP VIEW IF EXISTS `cndatos_info_comunicado_eventos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_info_comunicado_eventos` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Ciudad`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Cliente`,
 1 AS `Nombre_afiliado`,
 1 AS `T_documento`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `JRCI_Destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Nit_cc`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Email_destinatario`,
 1 AS `Id_departamento`,
 1 AS `Nombre_departamento`,
 1 AS `Id_municipio`,
 1 AS `Nombre_municipio`,
 1 AS `Asunto`,
 1 AS `Cuerpo_comunicado`,
 1 AS `Anexos`,
 1 AS `Forma_envio`,
 1 AS `Nombre_forma_envio`,
 1 AS `Elaboro`,
 1 AS `Reviso`,
 1 AS `Nombre_lider`,
 1 AS `Agregar_copia`,
 1 AS `JRCI_copia`,
 1 AS `Firmar_Comunicado`,
 1 AS `Tipo_descarga`,
 1 AS `Modulo_creacion`,
 1 AS `Reemplazado`,
 1 AS `Nombre_documento`,
 1 AS `N_siniestro`,
 1 AS `Estado_Notificacion`,
 1 AS `Nota`,
 1 AS `Correspondencia`,
 1 AS `Otro_destinatario`,
 1 AS `Estado_correspondencia`,
 1 AS `Id_Destinatarios`,
 1 AS `Nombre_usuario`,
 1 AS `F_registro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_reportes_notificaciones`
--

DROP TABLE IF EXISTS `cndatos_reportes_notificaciones`;
/*!50001 DROP VIEW IF EXISTS `cndatos_reportes_notificaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_reportes_notificaciones` AS SELECT 
 1 AS `consecutivo`,
 1 AS `Id_Correspondencia`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `Id_comunicado`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Agregar_copia`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Tipo_correspondencia`,
 1 AS `Destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad`,
 1 AS `Departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso`,
 1 AS `Servicio`,
 1 AS `Id_accion`,
 1 AS `Accion`,
 1 AS `Id_Estado_evento`,
 1 AS `Estado`,
 1 AS `N_orden`,
 1 AS `Tipo_destinatario`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Id_Estado_corresp`,
 1 AS `Estado_correspondencia`,
 1 AS `Estado_Notificacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cndatos_reportes_notificaciones_manuales`
--

DROP TABLE IF EXISTS `cndatos_reportes_notificaciones_manuales`;
/*!50001 DROP VIEW IF EXISTS `cndatos_reportes_notificaciones_manuales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cndatos_reportes_notificaciones_manuales` AS SELECT 
 1 AS `consecutivo`,
 1 AS `Id_Correspondencia`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `Id_comunicado`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Agregar_copia`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Tipo_correspondencia`,
 1 AS `Destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad`,
 1 AS `Departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso`,
 1 AS `Servicio`,
 1 AS `Id_accion`,
 1 AS `Accion`,
 1 AS `Id_Estado_evento`,
 1 AS `Estado`,
 1 AS `N_orden`,
 1 AS `Tipo_destinatario`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Id_Estado_corresp`,
 1 AS `Estado_correspondencia`,
 1 AS `Estado_Notificacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_noti_con_sin_IdDestinatarios`
--

DROP TABLE IF EXISTS `cnvista_reportes_noti_con_sin_IdDestinatarios`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_noti_con_sin_IdDestinatarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_noti_con_sin_IdDestinatarios` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_copias`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_copias`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_copias` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Tipo_correspondencia`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_copias_dos`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_copias_dos`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias_dos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_copias_dos` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_copias_tres`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_copias_tres`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias_tres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_copias_tres` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_correspondencias`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_correspondencias`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_correspondencias` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Tipo_correspondencia`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_correspondencias_dos`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_correspondencias_dos`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias_dos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_correspondencias_dos` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_correspondencias_tres`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_correspondencias_tres`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias_tres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_correspondencias_tres` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_principales`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_principales`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_principales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_principales` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_principales_dos`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_principales_dos`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_principales_dos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_principales_dos` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_notificaciones_uniones`
--

DROP TABLE IF EXISTS `cnvista_reportes_notificaciones_uniones`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_uniones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_notificaciones_uniones` AS SELECT 
 1 AS `Id_Comunicado`,
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_servicio`,
 1 AS `F_comunicado`,
 1 AS `N_radicado`,
 1 AS `Nombre_documento`,
 1 AS `Carpeta_impresion`,
 1 AS `Observaciones`,
 1 AS `N_identificacion`,
 1 AS `Destinatario`,
 1 AS `Tipo_descarga`,
 1 AS `Otro_destinatario`,
 1 AS `Tipo_destinatario`,
 1 AS `Nombre_destinatario`,
 1 AS `Direccion_destinatario`,
 1 AS `Telefono_destinatario`,
 1 AS `Ciudad_departamento`,
 1 AS `Email_destinatario`,
 1 AS `Proceso_servicio`,
 1 AS `Ultima_accion`,
 1 AS `Estado`,
 1 AS `N_de_orden`,
 1 AS `Id_destinatario`,
 1 AS `Tipo_correspondencia`,
 1 AS `N_guia`,
 1 AS `Folios`,
 1 AS `F_envio`,
 1 AS `F_notificacion`,
 1 AS `Estado_general_notificacion`,
 1 AS `Bandeja_notificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_trazabilidad_juntas`
--

DROP TABLE IF EXISTS `cnvista_reportes_trazabilidad_juntas`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_juntas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_trazabilidad_juntas` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Servicio`,
 1 AS `Tipo_documento`,
 1 AS `N_identificacion`,
 1 AS `Nombre_completo`,
 1 AS `Activador`,
 1 AS `N_radicado_siniestro`,
 1 AS `N_solicitud_evento`,
 1 AS `Conducta_actual`,
 1 AS `F_ultima_accion`,
 1 AS `Id_Accion_ultima`,
 1 AS `ultima_accion`,
 1 AS `Fecha_radicacion_pcl`,
 1 AS `F_estructuracion_pcl`,
 1 AS `Origen`,
 1 AS `Porcentaje_pcl`,
 1 AS `F_notificacion_efectiva_afiliado`,
 1 AS `Notificado_todas_las_partes`,
 1 AS `F_controversia`,
 1 AS `Parte_controvierte`,
 1 AS `Motivo_controversia`,
 1 AS `F_inicio_gestion_controversia`,
 1 AS `Dias_notificacion_apelacion`,
 1 AS `Procede_apelacion`,
 1 AS `F_max_controversia`,
 1 AS `Novedades_controversia`,
 1 AS `Junta_regional`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_trazabilidad_pcls`
--

DROP TABLE IF EXISTS `cnvista_reportes_trazabilidad_pcls`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_trazabilidad_pcls` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_Comunicado_general`,
 1 AS `Id_Comunicado_guia_sol_com`,
 1 AS `Id_Comunicado_submodulos`,
 1 AS `Id_Comunicado_pcl_cierre_admin`,
 1 AS `Id_servicio`,
 1 AS `Servicio`,
 1 AS `Tipo_documentos`,
 1 AS `N_identificacion`,
 1 AS `Nombre_completo`,
 1 AS `Activador`,
 1 AS `N_radicado_siniestro`,
 1 AS `N_solicitud_evento`,
 1 AS `Conducta_actual`,
 1 AS `F_ultima_accion`,
 1 AS `Id_Accion_ultima`,
 1 AS `ultima_accion`,
 1 AS `F_radicacion`,
 1 AS `F_asignacion_gestion`,
 1 AS `Dias_control_asignacion`,
 1 AS `Control_asignacion`,
 1 AS `F_emision_1ra_conducta`,
 1 AS `Dias_control_1ra_conducnta`,
 1 AS `Control_1ra_conducta`,
 1 AS `Nueva_F_radicacion`,
 1 AS `Complementos`,
 1 AS `F_sol_complementos`,
 1 AS `Medio_envio_complementos`,
 1 AS `Estado_entrega_complementos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_trazabilidad_pcls_dos`
--

DROP TABLE IF EXISTS `cnvista_reportes_trazabilidad_pcls_dos`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls_dos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_trazabilidad_pcls_dos` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_Comunicado_general`,
 1 AS `Id_Comunicado_guia_sol_com`,
 1 AS `Id_Comunicado_submodulos`,
 1 AS `Id_Comunicado_pcl_cierre_admin`,
 1 AS `Id_servicio`,
 1 AS `Servicio`,
 1 AS `Tipo_documentos`,
 1 AS `N_identificacion`,
 1 AS `Nombre_completo`,
 1 AS `Activador`,
 1 AS `N_radicado_siniestro`,
 1 AS `N_solicitud_evento`,
 1 AS `Conducta_actual`,
 1 AS `F_ultima_accion`,
 1 AS `Id_Accion_ultima`,
 1 AS `ultima_accion`,
 1 AS `F_radicacion`,
 1 AS `F_asignacion_gestion`,
 1 AS `Dias_control_asignacion`,
 1 AS `Control_asignacion`,
 1 AS `F_emision_1ra_conducta`,
 1 AS `Dias_control_1ra_conducnta`,
 1 AS `Control_1ra_conducta`,
 1 AS `Nueva_F_radicacion`,
 1 AS `Complementos`,
 1 AS `F_sol_complementos`,
 1 AS `Medio_envio_complementos`,
 1 AS `Estado_entrega_complementos`,
 1 AS `F_noti_efectiva_complementos`,
 1 AS `Guia_complementos_afiliado`,
 1 AS `Prorroga`,
 1 AS `F_prorroga`,
 1 AS `Estado_prorroga`,
 1 AS `F_aporte_complementos`,
 1 AS `Id_accion_historial`,
 1 AS `Id_historial_accion`,
 1 AS `F_asignacion_cita`,
 1 AS `F_1ra_cita`,
 1 AS `Cita_reprogramada`,
 1 AS `Causal_incumpli_1ra_cita`,
 1 AS `F_asignacion_2da_cita`,
 1 AS `F_2da_cita`,
 1 AS `Cierre_2da_cita`,
 1 AS `Causal_incumpli_2da_cita`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cnvista_reportes_trazabilidad_pcls_tres`
--

DROP TABLE IF EXISTS `cnvista_reportes_trazabilidad_pcls_tres`;
/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls_tres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cnvista_reportes_trazabilidad_pcls_tres` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_Asignacion`,
 1 AS `Id_proceso`,
 1 AS `Id_Comunicado_general`,
 1 AS `Id_Comunicado_guia_sol_com`,
 1 AS `Id_Comunicado_submodulos`,
 1 AS `Id_Comunicado_pcl_cierre_admin`,
 1 AS `Id_servicio`,
 1 AS `Servicio`,
 1 AS `Tipo_documentos`,
 1 AS `N_identificacion`,
 1 AS `Nombre_completo`,
 1 AS `Activador`,
 1 AS `N_radicado_siniestro`,
 1 AS `N_solicitud_evento`,
 1 AS `Conducta_actual`,
 1 AS `F_ultima_accion`,
 1 AS `Id_Accion_ultima`,
 1 AS `ultima_accion`,
 1 AS `F_radicacion`,
 1 AS `F_asignacion_gestion`,
 1 AS `Dias_control_asignacion`,
 1 AS `Control_asignacion`,
 1 AS `F_emision_1ra_conducta`,
 1 AS `Dias_control_1ra_conducnta`,
 1 AS `Control_1ra_conducta`,
 1 AS `Nueva_F_radicacion`,
 1 AS `Complementos`,
 1 AS `F_sol_complementos`,
 1 AS `Medio_envio_complementos`,
 1 AS `Estado_entrega_complementos`,
 1 AS `F_noti_efectiva_complementos`,
 1 AS `Guia_complementos_afiliado`,
 1 AS `Prorroga`,
 1 AS `F_prorroga`,
 1 AS `Estado_prorroga`,
 1 AS `F_aporte_complementos`,
 1 AS `Id_accion_historial`,
 1 AS `Id_historial_accion`,
 1 AS `Aportado_correcto`,
 1 AS `F_asignacion_cita`,
 1 AS `F_1ra_cita`,
 1 AS `Cita_reprogramada`,
 1 AS `Causal_incumpli_1ra_cita`,
 1 AS `F_asignacion_2da_cita`,
 1 AS `F_2da_cita`,
 1 AS `Cierre_2da_cita`,
 1 AS `Causal_incumpli_2da_cita`,
 1 AS `F_emision_dml`,
 1 AS `Porcentaje_pcl`,
 1 AS `F_estructuracion`,
 1 AS `Origen`,
 1 AS `Medio_envio_noti_afi`,
 1 AS `Estado_general_noti`,
 1 AS `F_noti_efectiva_afi`,
 1 AS `Guia_afiliado`,
 1 AS `F_noti_efectiva_emp`,
 1 AS `Guia_empleador`,
 1 AS `F_noti_efectiva_eps`,
 1 AS `Guia_eps`,
 1 AS `F_noti_arl`,
 1 AS `Guia_arl`,
 1 AS `F_noti_efectiva_afp`,
 1 AS `Guia_afp`,
 1 AS `Causal_cierre`,
 1 AS `Medio_envio_comunicado_cierre`,
 1 AS `Estado_envio_comunicado_cierre`,
 1 AS `F_noti_efectiva_comuni_cierre`,
 1 AS `Guia_comuni_cierre_afi`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doc_eventos`
--

DROP TABLE IF EXISTS `doc_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc_eventos` (
  `ID_EVENTO` int NOT NULL,
  `url_cambio` text NOT NULL,
  `url_nueva` text NOT NULL,
  PRIMARY KEY (`ID_EVENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `reporte_facturacion_juntas`
--

DROP TABLE IF EXISTS `reporte_facturacion_juntas`;
/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_juntas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporte_facturacion_juntas` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Tipo_Documento`,
 1 AS `Nro_identificacion`,
 1 AS `Nombre_afiliado`,
 1 AS `Tipo_De_Afiliado`,
 1 AS `F_Notificacion_Afiliado`,
 1 AS `F_Controversia_Afiliado`,
 1 AS `F_Plazo_Afiliado`,
 1 AS `F_Radicacion`,
 1 AS `F_Pago_Honorarios_JRCI`,
 1 AS `Fuente_Informacion`,
 1 AS `Tipo_Servicio`,
 1 AS `Tipo_Controversia_1`,
 1 AS `Tipo_Controversia_2`,
 1 AS `Tipo_Controversia_3`,
 1 AS `Tipo_Controversia_4`,
 1 AS `Tipo_Controversia_5`,
 1 AS `Dx_Principal`,
 1 AS `Diagnostico_2`,
 1 AS `Diagnostico_3`,
 1 AS `Diagnostico_4`,
 1 AS `Diagnostico_5`,
 1 AS `Diagnostico_6`,
 1 AS `Accidente_Enfermedad`,
 1 AS `Origen_1A_Oportunidad`,
 1 AS `Calificacion_Pcl`,
 1 AS `F_estructuracion`,
 1 AS `Entidad_Califica_1A_Oportunidad`,
 1 AS `Parte_Interpone_Recurso`,
 1 AS `F_Pago_JRCI`,
 1 AS `F_Radicacion_Pago_JRCI`,
 1 AS `F_Envio_a_Jr`,
 1 AS `Guia_Junta`,
 1 AS `Guia_Afiliado`,
 1 AS `Guia_Rta_Junta_Regional`,
 1 AS `F_Reenvio_a_Jr`,
 1 AS `F_Reenvio_2_a_Jr`,
 1 AS `F_Reenvio_3_a_Jr`,
 1 AS `Junta_Regional`,
 1 AS `F_Radicado_Dictamen_JRCI`,
 1 AS `F_Dictamen_Junta`,
 1 AS `Origen_JR`,
 1 AS `Total_Minusvalia_`,
 1 AS `Total_Minusvalia_JR`,
 1 AS `Total_Discapacidad_JR`,
 1 AS `Total_deficiencia_jrci_emitido`,
 1 AS `Total_Rol_Laboral_JR`,
 1 AS `Calificacion_Pcl_JR`,
 1 AS `F_Estructuracion_JR`,
 1 AS `Arl`,
 1 AS `Eps`,
 1 AS `F_Sol_Constancia_EJE`,
 1 AS `F_Recibido_Dictamen_JR`,
 1 AS `F_Pago_JN`,
 1 AS `F_Pago_JN_Radicado`,
 1 AS `F_Envio_JN`,
 1 AS `F_Dictamen_JN`,
 1 AS `Origen_JN`,
 1 AS `Calificacion_Pcl_JN`,
 1 AS `F_Estructuracion_JN`,
 1 AS `Funcionario_Actual`,
 1 AS `Estado`,
 1 AS `Estado_Actual`,
 1 AS `Observacion`,
 1 AS `Fecha_Asignar_Profesional`,
 1 AS `F_Acuerdo_Concepto`,
 1 AS `F_Controversia`,
 1 AS `F_Notificacion_a_Alfa`,
 1 AS `F_Guia_Salida_Correspondencia_Afiliado`,
 1 AS `F_Guia_Salida_Correspondencia_JR`,
 1 AS `Ans_Dias`,
 1 AS `Ans_Estado`,
 1 AS `Observaciones`,
 1 AS `Corte`,
 1 AS `F_Pago_JR`,
 1 AS `F_Envio_Efectivo_JR`,
 1 AS `Ultima_Fecha_Accion`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reporte_facturacion_juntas_s`
--

DROP TABLE IF EXISTS `reporte_facturacion_juntas_s`;
/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_juntas_s`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporte_facturacion_juntas_s` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_proceso`,
 1 AS `Id_Asignacion`,
 1 AS `Id_servicio`,
 1 AS `Nro_Siniestro`,
 1 AS `Tipo_Documento`,
 1 AS `Identificacion`,
 1 AS `Nombre`,
 1 AS `Tipo_Afiliado`,
 1 AS `Fecha_Notificacion_Afiliado`,
 1 AS `Fecha_Controversia_Afiliado`,
 1 AS `Fecha_Plazo_Afiliado`,
 1 AS `Fecha_Radicacion`,
 1 AS `Fecha_Pago_Honorarios_JR`,
 1 AS `Fuente_Informacion`,
 1 AS `Tipo_Evento`,
 1 AS `Tipo_Controversia1`,
 1 AS `Tipo_Controversia2`,
 1 AS `Tipo_Controversia3`,
 1 AS `Tipo_Controversia4`,
 1 AS `Tipo_Controversia5`,
 1 AS `Dx_Principal`,
 1 AS `Diagnostico2`,
 1 AS `Diagnostico3`,
 1 AS `Diagnostico4`,
 1 AS `Diagnostico5`,
 1 AS `Diagnostico6`,
 1 AS `Accidente_Enfermedad`,
 1 AS `Origen_1A_Oportunidad`,
 1 AS `Calificacion_Pcl`,
 1 AS `Fecha_Estructuracion`,
 1 AS `Entidad_Califica_1A_Opo`,
 1 AS `Parte_Interpone_Recurso`,
 1 AS `Fecha_Pago_Jr`,
 1 AS `Fecha_Pago_Jr_Radicado`,
 1 AS `Fecha_Envio_A_Jr`,
 1 AS `Guia_Junta`,
 1 AS `Guia_Afiliado`,
 1 AS `Guia_Rta_Junta_Regional`,
 1 AS `Fecha_Reenvio_A_Jr`,
 1 AS `Fecha_Reenvio_2_A_Jr`,
 1 AS `Fecha_Reenvio_3_A_Jr`,
 1 AS `Junta_Regional`,
 1 AS `Fecha_Radicado_Dictamen_Jr`,
 1 AS `Fecha_Dictamen_Junta`,
 1 AS `Origen_Jr`,
 1 AS `Total_Minusvalia_Jr`,
 1 AS `Total_Discapacidad_Jr`,
 1 AS `Total_Deficiencia_Jr`,
 1 AS `Total_Rol_Laboral_Jr`,
 1 AS `Calificacion_Pcl_Jr`,
 1 AS `Fecha_Estructuracion_Jr`,
 1 AS `ARL`,
 1 AS `EPS`,
 1 AS `Fecha_Sol_Constancia_Eje`,
 1 AS `Fecha_Recibido_Dictamen_Jr`,
 1 AS `Fecha_Pago_Jn`,
 1 AS `Fecha_Pago_Jn_Radicado`,
 1 AS `Fecha_Envio_A_Jn`,
 1 AS `Fecha_Dictamen_Jn`,
 1 AS `Origen_Jn`,
 1 AS `Calificacion_Pcl_Jn`,
 1 AS `Fecha_Estructuracion_Jn`,
 1 AS `Funcionario_Actual`,
 1 AS `Funcionario_Ultima_Accion`,
 1 AS `Estado`,
 1 AS `Observacion_1`,
 1 AS `Fecha_Asignar_Profesional`,
 1 AS `Fecha_Acuerdo`,
 1 AS `Fecha_Controversia`,
 1 AS `Fecha_De_Notificacion_A_Alfa`,
 1 AS `Fecha_Guia_De_Salida_Correspondencia_Afiliado`,
 1 AS `Fecha_Guia_De_Salida_Correspondencia_Jr`,
 1 AS `Ans_Dias`,
 1 AS `Ans_Estado`,
 1 AS `Observacion_2`,
 1 AS `Corte`,
 1 AS `Fecha_Pago_Jr_blanco`,
 1 AS `Fecha_Envio_Efectvio_A_La_Jr`,
 1 AS `F_accion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reporte_facturacion_pcl`
--

DROP TABLE IF EXISTS `reporte_facturacion_pcl`;
/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_pcl`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporte_facturacion_pcl` AS SELECT 
 1 AS `Servicio`,
 1 AS `Tipo_de_Afiliado`,
 1 AS `F_Radicacion_a_CODESS`,
 1 AS `Nro_Siniestro`,
 1 AS `Documento`,
 1 AS `Nombre_afiliado`,
 1 AS `F_Solicitud_Documentos`,
 1 AS `F_Dictamen`,
 1 AS `Total_minusvalia`,
 1 AS `Total_discapacidad`,
 1 AS `Total_Deficiencia`,
 1 AS `Total_Rol_Laboral`,
 1 AS `Total_Rol_Ocupacional`,
 1 AS `F_estructuracion`,
 1 AS `Calificacion`,
 1 AS `Origen`,
 1 AS `Tipo_Evento`,
 1 AS `Calificado_Con`,
 1 AS `Estado`,
 1 AS `Accion`,
 1 AS `Cie10_1`,
 1 AS `Diagnostico_1`,
 1 AS `Cie10_2`,
 1 AS `Diagnostico_2`,
 1 AS `Cie10_3`,
 1 AS `Diagnostico_3`,
 1 AS `Cie10_4`,
 1 AS `Diagnostico_4`,
 1 AS `Cie10_5`,
 1 AS `Diagnostico_5`,
 1 AS `Cie10_6`,
 1 AS `Diagnostico_6`,
 1 AS `Requiere_Ayuda_Tercero`,
 1 AS `Requiere_Tercero_Toma_Decisiones`,
 1 AS `Requiere_dispositivo_apoyo`,
 1 AS `Requiere_revision_pension`,
 1 AS `Empresa`,
 1 AS `Arl`,
 1 AS `Eps`,
 1 AS `Guia_Afiliado`,
 1 AS `Guia_Eps`,
 1 AS `Guia_Afp`,
 1 AS `Guia_Empleador`,
 1 AS `Guia_Arl`,
 1 AS `Nombre_Departamento`,
 1 AS `F_Correspondencia`,
 1 AS `F_Notificacion_a_Alfa`,
 1 AS `Calificador`,
 1 AS `Ans_Dias`,
 1 AS `Ans_Estado`,
 1 AS `Observaciones`,
 1 AS `Tipo_de_Servicio`,
 1 AS `Tipo_de_Envio`,
 1 AS `Corte`,
 1 AS `Entidad_que_permite_dictamen`,
 1 AS `Porcentaje_Deficiencia`,
 1 AS `Ultima_Fecha_Accion`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reporte_facturacion_pcls`
--

DROP TABLE IF EXISTS `reporte_facturacion_pcls`;
/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_pcls`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporte_facturacion_pcls` AS SELECT 
 1 AS `ID_evento`,
 1 AS `Id_proceso`,
 1 AS `Id_Asignacion`,
 1 AS `Id_servicio`,
 1 AS `Nombre_Servicio`,
 1 AS `Tipo_Afiliado`,
 1 AS `Fecha_Radicacion_A_Codess`,
 1 AS `Nro_Siniestro`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Fecha_Solicitud_Documentos`,
 1 AS `Fecha_Dictamen`,
 1 AS `Total_Minusvalia`,
 1 AS `Total_Discapacidad`,
 1 AS `Total_Deficiencia`,
 1 AS `Total_Rol_Laboral`,
 1 AS `Fecha_Estructuracion`,
 1 AS `Calificacion`,
 1 AS `Origen`,
 1 AS `Tipo_Evento`,
 1 AS `Calificado_Con`,
 1 AS `Estado`,
 1 AS `Cie10_1`,
 1 AS `Diagnostico_1`,
 1 AS `Cie10_2`,
 1 AS `Diagnostico_2`,
 1 AS `Cie10_3`,
 1 AS `Diagnostico_3`,
 1 AS `Cie10_4`,
 1 AS `Diagnostico_4`,
 1 AS `Cie10_5`,
 1 AS `Diagnostico_5`,
 1 AS `Cie10_6`,
 1 AS `Diagnostico_6`,
 1 AS `Requiere_Ayuda_Tercero`,
 1 AS `Requiere_Tercero_Toma_Decisiones`,
 1 AS `Requiere_Revision_Pension`,
 1 AS `Empleador`,
 1 AS `ARL`,
 1 AS `EPS`,
 1 AS `Guia_Afiliado`,
 1 AS `Guia_Eps`,
 1 AS `Guia_Afp`,
 1 AS `Guia_Empleador`,
 1 AS `Guia_Arl`,
 1 AS `Nombre_Departamento`,
 1 AS `Fecha_Correspondencia`,
 1 AS `Fecha_Notificacion_Alfa`,
 1 AS `Calificador`,
 1 AS `Ans_Dias`,
 1 AS `Ans_Estado`,
 1 AS `Observaciones`,
 1 AS `Tipo_Servicio`,
 1 AS `Tipo_Envio`,
 1 AS `Corte`,
 1 AS `Entidad_Remite_Dictamen`,
 1 AS `Porcentaje_Deficiencia`,
 1 AS `F_accion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sigmel_calendarios`
--

DROP TABLE IF EXISTS `sigmel_calendarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_calendarios` (
  `IDDiaCalendario` int unsigned NOT NULL AUTO_INCREMENT,
  `FechaRegistro` timestamp NULL DEFAULT NULL,
  `Calendario` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Fecha` date DEFAULT NULL,
  `EsHabil` int DEFAULT '1',
  `EsFestivo` int DEFAULT '0',
  `DiaAno` int DEFAULT '0',
  PRIMARY KEY (`IDDiaCalendario`)
) ENGINE=InnoDB AUTO_INCREMENT=2558 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_campimetria_visuales`
--

DROP TABLE IF EXISTS `sigmel_campimetria_visuales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_campimetria_visuales` (
  `Id_Fila` int unsigned NOT NULL AUTO_INCREMENT,
  `Fila1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fila10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Fila`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_clientes`
--

DROP TABLE IF EXISTS `sigmel_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_clientes` (
  `Id_cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Tipo_cliente` int NOT NULL,
  `Nombre_cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nit` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Telefono_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Otros_telefonos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Email_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Otros_emails` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Linea_atencion_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Otras_lineas_atencion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Departamento` int NOT NULL,
  `Id_Ciudad` int NOT NULL,
  `Nro_Contrato` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_inicio_contrato` date DEFAULT NULL,
  `F_finalizacion_contrato` date DEFAULT NULL,
  `Nro_consecutivo_dictamen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Activo',
  `Codigo_cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Logo_cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Footer_cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_dato_1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_dato_2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_dato_3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_dato_4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `footer_dato_5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_consecutivos_destinatarios`
--

DROP TABLE IF EXISTS `sigmel_consecutivos_destinatarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_consecutivos_destinatarios` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Consecutivo_Destinatario` varchar(255) NOT NULL,
  `Estado` enum('activo','inactivo') DEFAULT 'activo',
  `F_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `F_actualizacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Consecutivo_Destinatario_UNIQUE` (`Consecutivo_Destinatario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_grupos_trabajos`
--

DROP TABLE IF EXISTS `sigmel_grupos_trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_grupos_trabajos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_proceso_equipo` int unsigned NOT NULL,
  `nombre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lider` int unsigned NOT NULL,
  `Accion` int DEFAULT NULL,
  `estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_historial_acciones_eventos`
--

DROP TABLE IF EXISTS `sigmel_historial_acciones_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_historial_acciones_eventos` (
  `Id_Historial_Accion` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_accion` date DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Accion_realizada` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`Id_Historial_Accion`)
) ENGINE=InnoDB AUTO_INCREMENT=20581 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_historico_empresas_afiliados`
--

DROP TABLE IF EXISTS `sigmel_historico_empresas_afiliados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_historico_empresas_afiliados` (
  `Id_HistoricoLaboral` int unsigned NOT NULL AUTO_INCREMENT,
  `Nro_identificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_empleado` enum('Empleado actual','Independiente','Beneficiario') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_arl` int DEFAULT NULL,
  `Empresa` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nit_o_cc` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Telefono_empresa` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_departamento` int DEFAULT NULL,
  `Id_municipio` int DEFAULT NULL,
  `Id_actividad_economica` int DEFAULT NULL,
  `Id_clase_riesgo` int DEFAULT NULL,
  `Persona_contacto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_persona_contacto` varchar(22) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_codigo_ciuo` int DEFAULT NULL,
  `F_ingreso` date DEFAULT NULL,
  `Cargo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Funciones_cargo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Antiguedad_empresa` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Antiguedad_cargo_empresa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_retiro` date DEFAULT NULL,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_HistoricoLaboral`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_info_campimetria_ojo_der_eventos`
--

DROP TABLE IF EXISTS `sigmel_info_campimetria_ojo_der_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_info_campimetria_ojo_der_eventos` (
  `Id_info` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_agudeza` int DEFAULT NULL,
  `InfoFila1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=1421 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_info_campimetria_ojo_derre_eventos`
--

DROP TABLE IF EXISTS `sigmel_info_campimetria_ojo_derre_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_info_campimetria_ojo_derre_eventos` (
  `Id_info` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_agudeza` int DEFAULT NULL,
  `InfoFila1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_info_campimetria_ojo_izq_eventos`
--

DROP TABLE IF EXISTS `sigmel_info_campimetria_ojo_izq_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_info_campimetria_ojo_izq_eventos` (
  `Id_info` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_agudeza` int DEFAULT NULL,
  `InfoFila1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=1421 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_info_campimetria_ojo_izqre_eventos`
--

DROP TABLE IF EXISTS `sigmel_info_campimetria_ojo_izqre_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_info_campimetria_ojo_izqre_eventos` (
  `Id_info` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_agudeza` int DEFAULT NULL,
  `InfoFila1` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila2` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila3` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila4` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila5` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila6` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila7` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila8` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila9` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `InfoFila10` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_accion_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_accion_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_accion_eventos` (
  `Id_Accion` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Modalidad_calificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fuente_informacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_primera_cita` date DEFAULT NULL,
  `Causal_incumplimiento_primera_cita` int DEFAULT NULL,
  `F_segunda_cita` date DEFAULT NULL,
  `Causal_incumplimiento_segunda_cita` int DEFAULT NULL,
  `F_accion` datetime NOT NULL,
  `Accion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_Alerta` datetime DEFAULT NULL,
  `Enviar` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado_Facturacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Causal_devolucion_comite` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_devolucion_comite` datetime DEFAULT NULL,
  `Descripcion_accion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_recepcion_doc_origen` datetime DEFAULT NULL,
  `F_asignacion_dto` datetime DEFAULT NULL,
  `F_calificacion_servicio` datetime DEFAULT NULL,
  `F_asignacion_pronu_juntas` datetime DEFAULT NULL,
  `F_cierre` date DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Accion`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_acciones`
--

DROP TABLE IF EXISTS `sigmel_informacion_acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_acciones` (
  `Id_Accion` int unsigned NOT NULL AUTO_INCREMENT,
  `Estado_accion` int NOT NULL,
  `Accion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Descripcion_accion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Status_accion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_creacion_accion` date NOT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Accion`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_acciones_insert` AFTER INSERT ON `sigmel_informacion_acciones` FOR EACH ROW BEGIN
INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_acciones`
    (
		`Aud_Id_Accion`,
		`Aud_Estado_accion`,
		`Aud_Accion`,
		`Aud_Descripcion_accion`,
		`Aud_Status_accion`,
		`Aud_F_creacion_accion`,
		`Aud_Nombre_usuario`,
		`Aud_created_at`,
		`Aud_updated_at`
    )VALUES(
		new.`Id_Accion`,
		new.`Estado_accion`,
		new.`Accion`,
		new.`Descripcion_accion`,
		new.`Status_accion`,
		new.`F_creacion_accion`,
		new.`Nombre_usuario`,
		new.`created_at`,
		new.`updated_at`
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_acciones_update` AFTER UPDATE ON `sigmel_informacion_acciones` FOR EACH ROW BEGIN
INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_acciones`
    (
		`Aud_Id_Accion`,
		`Aud_Estado_accion`,
		`Aud_Accion`,
		`Aud_Descripcion_accion`,
		`Aud_Status_accion`,
		`Aud_F_creacion_accion`,
		`Aud_Nombre_usuario`,
		`Aud_created_at`,
		`Aud_updated_at`
    )VALUES(
		new.`Id_Accion`,
		new.`Estado_accion`,
		new.`Accion`,
		new.`Descripcion_accion`,
		new.`Status_accion`,
		new.`F_creacion_accion`,
		new.`Nombre_usuario`,
		new.`created_at`,
		new.`updated_at`
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_acciones_automaticas_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_acciones_automaticas_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_acciones_automaticas_eventos` (
  `Id_accion_automatica` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Asignacion` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Id_cliente` int DEFAULT NULL,
  `Accion_automatica` int DEFAULT NULL,
  `Id_Estado_evento_automatico` int DEFAULT NULL,
  `F_accion` datetime DEFAULT NULL,
  `Id_profesional_automatico` int DEFAULT NULL,
  `Nombre_profesional_automatico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_movimiento_automatico` date DEFAULT NULL,
  `Estado_accion_automatica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_accion_automatica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_adiciones_dx_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_adiciones_dx_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_adiciones_dx_eventos` (
  `Id_Adiciones_Dx` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_Dto_ATEL` int NOT NULL,
  `Activo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_evento` int DEFAULT NULL,
  `Relacion_documentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otros_relacion_documentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion_Adicion_Dx` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Origen` int DEFAULT NULL,
  `N_radicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_siniestro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Tipo_accidente` int DEFAULT NULL,
  `Fecha_evento` date DEFAULT NULL,
  `Hora_evento` time DEFAULT NULL,
  `Grado_severidad` int DEFAULT NULL,
  `Mortal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fecha_fallecimiento` date DEFAULT NULL,
  `Descripcion_FURAT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Factor_riesgo` int DEFAULT NULL,
  `Tipo_lesion` int DEFAULT NULL,
  `Parte_cuerpo_afectada` int DEFAULT NULL,
  `Justificacion_revision_origen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Adiciones_Dx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_afiliado_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_afiliado_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_afiliado_eventos` (
  `Id_Afiliado` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_afiliado` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tipo_documento` int NOT NULL,
  `Nro_identificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_nacimiento` date NOT NULL,
  `Edad` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Genero` int DEFAULT NULL,
  `Email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_contacto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado_civil` int DEFAULT NULL,
  `Nivel_escolar` int DEFAULT NULL,
  `Apoderado` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_documento_apoderado` int DEFAULT NULL,
  `Nro_identificacion_apoderado` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_apoderado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Email_apoderado` text COLLATE utf8mb3_unicode_ci,
  `Telefono_apoderado` text COLLATE utf8mb3_unicode_ci,
  `Direccion_apoderado` text COLLATE utf8mb3_unicode_ci,
  `Id_departamento_apoderado` int DEFAULT NULL,
  `Id_municipio_apoderado` int DEFAULT NULL,
  `Id_dominancia` int DEFAULT NULL,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Id_departamento` int DEFAULT NULL,
  `Id_municipio` int DEFAULT NULL,
  `Ocupacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Tipo_afiliado` int DEFAULT NULL,
  `Ibc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Id_eps` int DEFAULT NULL,
  `Id_afp` int DEFAULT NULL,
  `Id_arl` int DEFAULT NULL,
  `Entidad_conocimiento` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_afp_entidad_conocimiento` int DEFAULT NULL,
  `Activo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_afiliado_benefi` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_documento_benefi` int DEFAULT NULL,
  `Nro_identificacion_benefi` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Direccion_benefi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Email_benefi` text COLLATE utf8mb3_unicode_ci,
  `Telefono_benefi` text COLLATE utf8mb3_unicode_ci,
  `Id_departamento_benefi` int DEFAULT NULL,
  `Id_municipio_benefi` int DEFAULT NULL,
  `Medio_notificacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `F_registro` date NOT NULL,
  `F_actualizacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Afiliado`),
  KEY `ID_evento` (`ID_evento`),
  KEY `Tipo_afiliado` (`Tipo_afiliado`) USING BTREE,
  KEY `Tipo_documento` (`Tipo_documento`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_agudeza_auditiva_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_agudeza_auditiva_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_agudeza_auditiva_eventos` (
  `Id_Agudeza_auditiva` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Oido_Izquierdo` int NOT NULL,
  `Oido_Derecho` int NOT NULL,
  `Deficiencia_monoaural_izquierda` double(8,2) NOT NULL,
  `Deficiencia_monoaural_derecha` double(8,2) NOT NULL,
  `Deficiencia_binaural` double(8,2) NOT NULL,
  `Adicion_tinnitus` int NOT NULL,
  `Dx_Principal` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Deficiencia` int NOT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Agudeza_auditiva`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_agudeza_visual_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_agudeza_visual_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_agudeza_visual_eventos` (
  `Id_agudeza` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Ceguera_Total` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ojo_Izq` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ojo_Der` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ambos_Ojos` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PAVF` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DAV` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ojo_Izq` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ojo_Der` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ambos_Ojos` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CVF` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DCV` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DSV` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Dx_Principal` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Deficiencia` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_agudeza`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_agudeza_visualre_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_agudeza_visualre_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_agudeza_visualre_eventos` (
  `Id_agudeza_re` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento_re` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion_re` int NOT NULL,
  `Id_proceso_re` int NOT NULL,
  `Ceguera_Total_re` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ojo_Izq_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ojo_Der_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Agudeza_Ambos_Ojos_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PAVF_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DAV_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ojo_Izq_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ojo_Der_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Campo_Visual_Ambos_Ojos_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CVF_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DCV_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DSV_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Dx_Principal_re` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Deficiencia_re` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_agudeza_re`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_alertas_automaticas_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_alertas_automaticas_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_alertas_automaticas_eventos` (
  `Id_alerta_automatica` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Asignacion` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Id_cliente` int DEFAULT NULL,
  `Accion_ejecutar` int DEFAULT NULL,
  `F_accion` datetime DEFAULT NULL,
  `Tiempo_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Porcentaje_alerta_naranja` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_accion_alerta_naranja` datetime DEFAULT NULL,
  `Porcentaje_alerta_roja` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_accion_alerta_roja` datetime DEFAULT NULL,
  `Estado_alerta_automatica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_alerta_automatica`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_ans_clientes`
--

DROP TABLE IF EXISTS `sigmel_informacion_ans_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_ans_clientes` (
  `Id_ans` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Nombre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Valor` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Unidad` int DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_ans`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_asignacion_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_asignacion_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_asignacion_eventos` (
  `Id_Asignacion` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_proceso` int NOT NULL,
  `Visible_Nuevo_Proceso` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Si',
  `Id_servicio` int NOT NULL,
  `Visible_Nuevo_Servicio` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Si',
  `Id_accion` int NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_alerta` datetime DEFAULT NULL,
  `Id_Estado_evento` int DEFAULT NULL,
  `F_accion` datetime DEFAULT NULL,
  `F_radicacion` date DEFAULT NULL,
  `Nueva_F_radicacion` date DEFAULT NULL,
  `N_de_orden` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_proceso_anterior` int DEFAULT NULL,
  `Id_servicio_anterior` int DEFAULT NULL,
  `F_asignacion_calificacion` datetime DEFAULT NULL,
  `Consecutivo_dictamen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_profesional` int DEFAULT NULL,
  `Nombre_profesional` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_calificador` int DEFAULT NULL,
  `Nombre_calificador` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion_bandeja` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_calificacion` date DEFAULT NULL,
  `F_ajuste_calificacion` date DEFAULT NULL,
  `Detener_tiempo_gestion` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_detencion_tiempo_gestion` date DEFAULT NULL,
  `Fuente_info_juntas` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Notificacion` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'No',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Asignacion`),
  KEY `ID_evento` (`ID_evento`) /*!80000 INVISIBLE */,
  KEY `Id_proceso` (`Id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_asignacion_eventos_insert` AFTER INSERT ON `sigmel_informacion_asignacion_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_asignacion_eventos`
	(
	`Aud_Id_Asignacion`,
	`Aud_ID_evento`,
	`Aud_Id_proceso`,
	`Aud_Visible_Nuevo_Proceso`,
	`Aud_Id_servicio`,
	`Aud_Visible_Nuevo_Servicio`,
	`Aud_Id_accion`,
	`Aud_Descripcion`,
	`Aud_F_alerta`,
	`Aud_Id_Estado_evento`,
	`Aud_F_accion`,
	`Aud_F_radicacion`,
	`Aud_Nueva_F_radicacion`,
	`Aud_N_de_orden`,
	`Aud_Id_proceso_anterior`,
	`Aud_Id_servicio_anterior`,
	`Aud_F_asignacion_calificacion`,
	`Aud_Consecutivo_dictamen`,
	`Aud_Id_profesional`,
	`Aud_Nombre_profesional`,
	`Aud_Descripcion_bandeja`,
	`Aud_F_calificacion`,
	`Aud_F_ajuste_calificacion`,
	`Aud_Detener_tiempo_gestion`,
	`Aud_F_detencion_tiempo_gestion`,
	`Aud_Notificacion`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
	VALUES
	(
    new.`Id_Asignacion`,
	new.`ID_evento`,
	new.`Id_proceso`,
	new.`Visible_Nuevo_Proceso`,
	new.`Id_servicio`,
	new.`Visible_Nuevo_Servicio`,
	new.`Id_accion`,
	new.`Descripcion`,
	new.`F_alerta`,
	new.`Id_Estado_evento`,
	new.`F_accion`,
	new.`F_radicacion`,
	new.`Nueva_F_radicacion`,
	new.`N_de_orden`,
	new.`Id_proceso_anterior`,
	new.`Id_servicio_anterior`,
	new.`F_asignacion_calificacion`,
	new.`Consecutivo_dictamen`,
	new.`Id_profesional`,
	new.`Nombre_profesional`,
	new.`Descripcion_bandeja`,
	new.`F_calificacion`,
	new.`F_ajuste_calificacion`,
	new.`Detener_tiempo_gestion`,
	new.`F_detencion_tiempo_gestion`,
	new.`Notificacion`,
	new.`Nombre_usuario`,
	new.`F_registro`
    ); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_asignacion_eventos_update` AFTER UPDATE ON `sigmel_informacion_asignacion_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_asignacion_eventos`
	(
	`Aud_Id_Asignacion`,
	`Aud_ID_evento`,
	`Aud_Id_proceso`,
	`Aud_Visible_Nuevo_Proceso`,
	`Aud_Id_servicio`,
	`Aud_Visible_Nuevo_Servicio`,
	`Aud_Id_accion`,
	`Aud_Descripcion`,
	`Aud_F_alerta`,
	`Aud_Id_Estado_evento`,
	`Aud_F_accion`,
	`Aud_F_radicacion`,
	`Aud_Nueva_F_radicacion`,
	`Aud_N_de_orden`,
	`Aud_Id_proceso_anterior`,
	`Aud_Id_servicio_anterior`,
	`Aud_F_asignacion_calificacion`,
	`Aud_Consecutivo_dictamen`,
	`Aud_Id_profesional`,
	`Aud_Nombre_profesional`,
	`Aud_Descripcion_bandeja`,
	`Aud_F_calificacion`,
	`Aud_F_ajuste_calificacion`,
	`Aud_Detener_tiempo_gestion`,
	`Aud_F_detencion_tiempo_gestion`,
	`Aud_Notificacion`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
	VALUES
	(
    new.`Id_Asignacion`,
	new.`ID_evento`,
	new.`Id_proceso`,
	new.`Visible_Nuevo_Proceso`,
	new.`Id_servicio`,
	new.`Visible_Nuevo_Servicio`,
	new.`Id_accion`,
	new.`Descripcion`,
	new.`F_alerta`,
	new.`Id_Estado_evento`,
	new.`F_accion`,
	new.`F_radicacion`,
	new.`Nueva_F_radicacion`,
	new.`N_de_orden`,
	new.`Id_proceso_anterior`,
	new.`Id_servicio_anterior`,
	new.`F_asignacion_calificacion`,
	new.`Consecutivo_dictamen`,
	new.`Id_profesional`,
	new.`Nombre_profesional`,
	new.`Descripcion_bandeja`,
	new.`F_calificacion`,
	new.`F_ajuste_calificacion`,
	new.`Detener_tiempo_gestion`,
	new.`F_detencion_tiempo_gestion`,
	new.`Notificacion`,
	new.`Nombre_usuario`,
	new.`F_registro`
    ); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_comite_interdisciplinario_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_comite_interdisciplinario_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_comite_interdisciplinario_eventos` (
  `Id_com_inter` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Visar` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Profesional_comite` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_visado_comite` date DEFAULT NULL,
  `Oficio_Origen` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Oficio_pcl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Oficio_incapacidad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Formatob` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Formatoc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Formatod` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Formatoe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Destinatario_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otro_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Tipo_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_dest_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_dest_principal_afi_empl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nit_cc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Email_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Departamento_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Ciudad_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Asunto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cuerpo_comunicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Copia_afiliado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_empleador` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_eps` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_afp` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_arl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_afp_conocimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_jr` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Cual_jr` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Copia_jn` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Anexos` int DEFAULT NULL,
  `Forma_envio` int DEFAULT NULL,
  `Elaboro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Reviso` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Firmar` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Ciudad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_correspondecia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_radicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Decision_dictamen` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_com_inter`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_comunicado_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_comunicado_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_comunicado_eventos` (
  `Id_Comunicado` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Ciudad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_comunicado` date NOT NULL,
  `N_radicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_afiliado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `T_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `N_identificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `JRCI_Destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_destinatario` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nit_cc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Direccion_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Telefono_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Email_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_departamento` int NOT NULL,
  `Id_municipio` int NOT NULL,
  `Asunto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cuerpo_comunicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Anexos` int DEFAULT NULL,
  `Forma_envio` int NOT NULL,
  `Elaboro` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Reviso` int NOT NULL,
  `Agregar_copia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `JRCI_copia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Firmar_Comunicado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_descarga` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Modulo_creacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Reemplazado` int NOT NULL DEFAULT '0',
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Lista_chequeo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'No',
  `N_siniestro` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nota` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado_Notificacion` int DEFAULT '359',
  `Correspondencia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otro_destinatario` int NOT NULL DEFAULT '0',
  `Id_Destinatarios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Comunicado`),
  KEY `ID_evento` (`ID_evento`) /*!80000 INVISIBLE */,
  KEY `Id_Asignacion` (`Id_Asignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `sigmel_informacion_comunicado_eventos_AFTER_INSERT` AFTER INSERT ON `sigmel_informacion_comunicado_eventos` FOR EACH ROW BEGIN
INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_comunicado_eventos`
	(`Aud_Id_Comunicado`,
	`Aud_ID_evento`,
	`Aud_Id_Asignacion`,
	`Aud_Id_proceso`,
	`Aud_Ciudad`,
	`Aud_F_comunicado`,
	`Aud_N_radicado`,
	`Aud_Cliente`,
	`Aud_Nombre_afiliado`,
	`Aud_T_documento`,
	`Aud_N_identificacion`,
	`Aud_Destinatario`,
	`Aud_Nombre_destinatario`,
	`Aud_Nit_cc`,
	`Aud_Direccion_destinatario`,
	`Aud_Telefono_destinatario`,
	`Aud_Email_destinatario`,
	`Aud_Id_departamento`,
	`Aud_Id_municipio`,
	`Aud_Asunto`,
	`Aud_Cuerpo_comunicado`,
	`Aud_Anexos`,
	`Aud_Forma_envio`,
	`Aud_Elaboro`,
	`Aud_Reviso`,
	`Aud_Agregar_copia`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
    VALUES(
    new.`Id_Comunicado`,
	new.`ID_evento`,
	new.`Id_Asignacion`,
	new.`Id_proceso`,
	new.`Ciudad`,
	new.`F_comunicado`,
	new.`N_radicado`,
	new.`Cliente`,
	new.`Nombre_afiliado`,
	new.`T_documento`,
	new.`N_identificacion`,
	new.`Destinatario`,
	new.`Nombre_destinatario`,
	new.`Nit_cc`,
	new.`Direccion_destinatario`,
	new.`Telefono_destinatario`,
	new.`Email_destinatario`,
	new.`Id_departamento`,
	new.`Id_municipio`,
	new.`Asunto`,
	new.`Cuerpo_comunicado`,
	new.`Anexos`,
	new.`Forma_envio`,
	new.`Elaboro`,
	new.`Reviso`,
	new.`Agregar_copia`,
	new.`Nombre_usuario`,
	new.`F_registro`
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_comunicado_eventos_update` AFTER UPDATE ON `sigmel_informacion_comunicado_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_comunicado_eventos`
	(`Aud_Id_Comunicado`,
	`Aud_ID_evento`,
	`Aud_Id_Asignacion`,
	`Aud_Id_proceso`,
	`Aud_Ciudad`,
	`Aud_F_comunicado`,
	`Aud_N_radicado`,
	`Aud_Cliente`,
	`Aud_Nombre_afiliado`,
	`Aud_T_documento`,
	`Aud_N_identificacion`,
	`Aud_Destinatario`,
	`Aud_Nombre_destinatario`,
	`Aud_Nit_cc`,
	`Aud_Direccion_destinatario`,
	`Aud_Telefono_destinatario`,
	`Aud_Email_destinatario`,
	`Aud_Id_departamento`,
	`Aud_Id_municipio`,
	`Aud_Asunto`,
	`Aud_Cuerpo_comunicado`,
	`Aud_Anexos`,
	`Aud_Forma_envio`,
	`Aud_Elaboro`,
	`Aud_Reviso`,
	`Aud_Agregar_copia`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
    VALUES(
    new.`Id_Comunicado`,
	new.`ID_evento`,
	new.`Id_Asignacion`,
	new.`Id_proceso`,
	new.`Ciudad`,
	new.`F_comunicado`,
	new.`N_radicado`,
	new.`Cliente`,
	new.`Nombre_afiliado`,
	new.`T_documento`,
	new.`N_identificacion`,
	new.`Destinatario`,
	new.`Nombre_destinatario`,
	new.`Nit_cc`,
	new.`Direccion_destinatario`,
	new.`Telefono_destinatario`,
	new.`Email_destinatario`,
	new.`Id_departamento`,
	new.`Id_municipio`,
	new.`Asunto`,
	new.`Cuerpo_comunicado`,
	new.`Anexos`,
	new.`Forma_envio`,
	new.`Elaboro`,
	new.`Reviso`,
	new.`Agregar_copia`,
	new.`Nombre_usuario`,
	new.`F_registro`
    );/* poner punto y coma (;) para correr el trigger en el gestor */
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_controversia_juntas_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_controversia_juntas_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_controversia_juntas_eventos` (
  `Id_Contro_Junta` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Enfermedad_heredada` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_transferencia_enfermedad` date DEFAULT NULL,
  `Primer_calificador` int DEFAULT NULL,
  `Nom_entidad` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_dictamen_controvertido` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_dictamen_controvertido` date DEFAULT NULL,
  `N_siniestro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_notifi_afiliado` date DEFAULT NULL,
  `Parte_controvierte_califi` int DEFAULT NULL,
  `Nombre_controvierte_califi` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_radicado_entrada_contro` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_origen` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_pcl` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_diagnostico` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_f_estructura` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_m_califi` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_contro_primer_califi` date DEFAULT NULL,
  `F_contro_radi_califi` date DEFAULT NULL,
  `Termino_contro_califi` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Jrci_califi_invalidez` int DEFAULT NULL,
  `Origen_controversia` int DEFAULT NULL,
  `Manual_de_califi` int DEFAULT NULL,
  `Total_deficiencia` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Total_rol_ocupacional` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_discapacidad` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_minusvalia` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Porcentaje_pcl` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Rango_pcl` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_pago_jnci_contro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_estructuracion_contro` date DEFAULT NULL,
  `F_pago_jnci_contro` date DEFAULT NULL,
  `F_radica_pago_jnci_contro` date DEFAULT NULL,
  `F_envio_jrci` date DEFAULT NULL,
  `N_dictamen_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_dictamen_jrci_emitido` date DEFAULT NULL,
  `Origen_jrci_emitido` int DEFAULT NULL,
  `Manual_de_califi_jrci_emitido` int DEFAULT NULL,
  `Total_deficiencia_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_rol_ocupacional_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_discapacidad_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_minusvalia_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Porcentaje_pcl_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Rango_pcl_jrci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_estructuracion_contro_jrci_emitido` date DEFAULT NULL,
  `Resumen_dictamen_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_noti_dictamen_jrci` date DEFAULT NULL,
  `F_radica_dictamen_jrci` date DEFAULT NULL,
  `F_maxima_recurso_jrci` date DEFAULT NULL,
  `Decision_dictamen_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Causal_decision_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion_concepto_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_sustenta_jrci` date DEFAULT NULL,
  `F_notificacion_recurso_jrci` date DEFAULT NULL,
  `N_radicado_recurso_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Termino_contro_propia_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Firmeza_intere_contro_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Firmeza_reposicion_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Firmeza_acta_ejecutoria_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Firmeza_apelacion_jnci_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Parte_contro_ante_jrci` int DEFAULT NULL,
  `Nombre_presen_contro_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_contro_otra_jrci` date DEFAULT NULL,
  `Contro_origen_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_pcl_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_diagnostico_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_f_estructura_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Contro_m_califi_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Reposicion_dictamen_jrci` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_dictamen_reposicion_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_dictamen_reposicion_jrci` date DEFAULT NULL,
  `Origen_reposicion_jrci` int DEFAULT NULL,
  `Manual_reposicion_jrci` int DEFAULT NULL,
  `Total_deficiencia_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_discapacidad_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_minusvalia_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Porcentaje_pcl_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_estructuracion_contro_reposicion_jrci` date DEFAULT NULL,
  `Resumen_dictamen_reposicion_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_noti_dictamen_reposicion_jrci` date DEFAULT NULL,
  `F_radica_dictamen_reposicion_jrci` date DEFAULT NULL,
  `F_maxima_apelacion_jrci` date DEFAULT NULL,
  `Rango_pcl_reposicion_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Decision_dictamen_repo_jrci` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Causal_decision_repo_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion_concepto_repo_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `F_sustenta_reposicion_jrci` date DEFAULT NULL,
  `F_noti_apela_recurso_jrci` date DEFAULT NULL,
  `N_radicado_apela_recurso_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `T_propia_apela_recurso_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Correspon_pago_jnci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_orden_pago_jnci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_orden_pago_jnci` date DEFAULT NULL,
  `F_radi_pago_jnci` date DEFAULT NULL,
  `N_acta_ejecutario_emitida_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_acta_ejecutoria_emitida_jrci` date DEFAULT NULL,
  `F_firmeza_dictamen_jrci` date DEFAULT NULL,
  `Dictamen_firme_jrci` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_dictamen_jnci_emitido` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_dictamen_jnci_emitido` date DEFAULT NULL,
  `Origen_jnci_emitido` int DEFAULT NULL,
  `Manual_de_califi_jnci_emitido` int DEFAULT NULL,
  `Total_deficiencia_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_rol_ocupacional_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_discapacidad_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_minusvalia_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Porcentaje_pcl_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Rango_pcl_jnci_emitido` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_estructuracion_contro_jnci_emitido` date DEFAULT NULL,
  `Resumen_dictamen_jnci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion_dictamen_jnci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_sustenta_ante_jnci` date DEFAULT NULL,
  `F_noti_ante_jnci` date DEFAULT NULL,
  `F_radica_dictamen_jnci` date DEFAULT NULL,
  `F_plazo_controversia` date DEFAULT NULL,
  `F_envio_jnci` date DEFAULT NULL,
  `Observaciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_Asignacion_Servicio_Anterior` int DEFAULT NULL,
  `F_devolucion_exp_jrci` date DEFAULT NULL,
  `Causal_devo_exp_jrci` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_reenvio_exp_jrci` date DEFAULT NULL,
  `F_cita_jrci` date DEFAULT NULL,
  `F_soli_pago_hono_jnci` date DEFAULT NULL,
  `F_cita_jnci` date DEFAULT NULL,
  `F_radicacion_pri_opor` date DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Contro_Junta`),
  KEY `ID_evento` (`ID_evento`) /*!80000 INVISIBLE */,
  KEY `Id_Asignacion` (`Id_Asignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_controversia_juntas_eventos_insert` AFTER INSERT ON `sigmel_informacion_controversia_juntas_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_controversia_juntas_eventos`
	(
		`Aud_Id_Contro_Junta`,
		`Aud_ID_evento`,
		`Aud_Id_Asignacion`,
		`Aud_Id_proceso`,
		`Aud_Enfermedad_heredada`,
		`Aud_F_transferencia_enfermedad`,
		`Aud_Primer_calificador`,
		`Aud_Nom_entidad`,
		`Aud_N_dictamen_controvertido`,
		`Aud_F_dictamen_controvertido`,
		`Aud_N_siniestro`,
		`Aud_F_notifi_afiliado`,
		`Aud_Parte_controvierte_califi`,
		`Aud_Nombre_controvierte_califi`,
		`Aud_N_radicado_entrada_contro`,
		`Aud_Contro_origen`,
		`Aud_Contro_pcl`,
		`Aud_Contro_diagnostico`,
		`Aud_Contro_f_estructura`,
		`Aud_Contro_m_califi`,
		`Aud_F_contro_primer_califi`,
		`Aud_F_contro_radi_califi`,
		`Aud_Termino_contro_califi`,
		`Aud_Jrci_califi_invalidez`,
		`Aud_Origen_controversia`,
		`Aud_Manual_de_califi`,
		`Aud_Total_deficiencia`,
		`Aud_Total_rol_ocupacional`,
		`Aud_Total_discapacidad`,
		`Aud_Total_minusvalia`,
		`Aud_Porcentaje_pcl`,
		`Aud_Rango_pcl`,
		`Aud_N_pago_jnci_contro`,
		`Aud_F_estructuracion_contro`,
		`Aud_F_pago_jnci_contro`,
		`Aud_F_radica_pago_jnci_contro`,
		`Aud_F_envio_jrci`,
		`Aud_N_dictamen_jrci_emitido`,
		`Aud_F_dictamen_jrci_emitido`,
		`Aud_Origen_jrci_emitido`,
		`Aud_Manual_de_califi_jrci_emitido`,
		`Aud_Total_deficiencia_jrci_emitido`,
		`Aud_Total_rol_ocupacional_jrci_emitido`,
		`Aud_Total_discapacidad_jrci_emitido`,
		`Aud_Total_minusvalia_jrci_emitido`,
		`Aud_Porcentaje_pcl_jrci_emitido`,
		`Aud_Rango_pcl_jrci_emitido`,
		`Aud_F_estructuracion_contro_jrci_emitido`,
		`Aud_Resumen_dictamen_jrci`,
		`Aud_F_noti_dictamen_jrci`,
		`Aud_F_radica_dictamen_jrci`,
		`Aud_F_maxima_recurso_jrci`,
		`Aud_Decision_dictamen_jrci`,
		`Aud_Causal_decision_jrci`,
		`Aud_Sustentacion_concepto_jrci`,
		`Aud_F_sustenta_jrci`,
		`Aud_F_notificacion_recurso_jrci`,
		`Aud_N_radicado_recurso_jrci`,
		`Aud_Termino_contro_propia_jrci`,
		`Aud_Firmeza_intere_contro_jrci`,
		`Aud_Firmeza_reposicion_jrci`,
		`Aud_Firmeza_acta_ejecutoria_jrci`,
		`Aud_Firmeza_apelacion_jnci_jrci`,
		`Aud_Parte_contro_ante_jrci`,
		`Aud_Nombre_presen_contro_jrci`,
		`Aud_F_contro_otra_jrci`,
		`Aud_Contro_origen_jrci`,
		`Aud_Contro_pcl_jrci`,
		`Aud_Contro_diagnostico_jrci`,
		`Aud_Contro_f_estructura_jrci`,
		`Aud_Contro_m_califi_jrci`,
		`Aud_Reposicion_dictamen_jrci`,
		`Aud_N_dictamen_reposicion_jrci`,
		`Aud_F_dictamen_reposicion_jrci`,
		`Aud_Origen_reposicion_jrci`,
		`Aud_Manual_reposicion_jrci`,
		`Aud_Total_deficiencia_reposicion_jrci`,
		`Aud_Total_reposicion_jrci`,
		`Aud_Total_discapacidad_reposicion_jrci`,
		`Aud_Total_minusvalia_reposicion_jrci`,
		`Aud_Porcentaje_pcl_reposicion_jrci`,
		`Aud_F_estructuracion_contro_reposicion_jrci`,
		`Aud_Resumen_dictamen_reposicion_jrci`,
		`Aud_F_noti_dictamen_reposicion_jrci`,
		`Aud_F_radica_dictamen_reposicion_jrci`,
		`Aud_F_maxima_apelacion_jrci`,
		`Aud_Rango_pcl_reposicion_jrci`,
		`Aud_Decision_dictamen_repo_jrci`,
		`Aud_Causal_decision_repo_jrci`,
		`Aud_Sustentacion_concepto_repo_jrci`,
		`Aud_F_sustenta_reposicion_jrci`,
		`Aud_F_noti_apela_recurso_jrci`,
		`Aud_N_radicado_apela_recurso_jrci`,
		`Aud_T_propia_apela_recurso_jrci`,
		`Aud_Correspon_pago_jnci`,
		`Aud_N_orden_pago_jnci`,
		`Aud_F_orden_pago_jnci`,
		`Aud_F_radi_pago_jnci`,
		`Aud_N_acta_ejecutario_emitida_jrci`,
		`Aud_F_acta_ejecutoria_emitida_jrci`,
		`Aud_F_firmeza_dictamen_jrci`,
		`Aud_Dictamen_firme_jrci`,
		`Aud_N_dictamen_jnci_emitido`,
		`Aud_F_dictamen_jnci_emitido`,
		`Aud_Origen_jnci_emitido`,
		`Aud_Manual_de_califi_jnci_emitido`,
		`Aud_Total_deficiencia_jnci_emitido`,
		`Aud_Total_rol_ocupacional_jnci_emitido`,
		`Aud_Total_discapacidad_jnci_emitido`,
		`Aud_Total_minusvalia_jnci_emitido`,
		`Aud_Porcentaje_pcl_jnci_emitido`,
		`Aud_Rango_pcl_jnci_emitido`,
		`Aud_F_estructuracion_contro_jnci_emitido`,
		`Aud_Resumen_dictamen_jnci`,
		`Aud_Sustentacion_dictamen_jnci`,
		`Aud_F_sustenta_ante_jnci`,
		`Aud_F_noti_ante_jnci`,
		`Aud_F_radica_dictamen_jnci`,
		`Aud_F_plazo_controversia`,
		`Aud_F_envio_jnci`,
		`Aud_Observaciones`,
		`Aud_Id_Asignacion_Servicio_Anterior`,
		`Aud_Nombre_usuario`,
		`Aud_F_registro`
	)VALUES(
		new.`Id_Contro_Junta`,
		new.`ID_evento`,
		new.`Id_Asignacion`,
		new.`Id_proceso`,
		new.`Enfermedad_heredada`,
		new.`F_transferencia_enfermedad`,
		new.`Primer_calificador`,
		new.`Nom_entidad`,
		new.`N_dictamen_controvertido`,
		new.`F_dictamen_controvertido`,
		new.`N_siniestro`,
		new.`F_notifi_afiliado`,
		new.`Parte_controvierte_califi`,
		new.`Nombre_controvierte_califi`,
		new.`N_radicado_entrada_contro`,
		new.`Contro_origen`,
		new.`Contro_pcl`,
		new.`Contro_diagnostico`,
		new.`Contro_f_estructura`,
		new.`Contro_m_califi`,
		new.`F_contro_primer_califi`,
		new.`F_contro_radi_califi`,
		new.`Termino_contro_califi`,
		new.`Jrci_califi_invalidez`,
		new.`Origen_controversia`,
		new.`Manual_de_califi`,
		new.`Total_deficiencia`,
		new.`Total_rol_ocupacional`,
		new.`Total_discapacidad`,
		new.`Total_minusvalia`,
		new.`Porcentaje_pcl`,
		new.`Rango_pcl`,
		new.`N_pago_jnci_contro`,
		new.`F_estructuracion_contro`,
		new.`F_pago_jnci_contro`,
		new.`F_radica_pago_jnci_contro`,
		new.`F_envio_jrci`,
		new.`N_dictamen_jrci_emitido`,
		new.`F_dictamen_jrci_emitido`,
		new.`Origen_jrci_emitido`,
		new.`Manual_de_califi_jrci_emitido`,
		new.`Total_deficiencia_jrci_emitido`,
		new.`Total_rol_ocupacional_jrci_emitido`,
		new.`Total_discapacidad_jrci_emitido`,
		new.`Total_minusvalia_jrci_emitido`,
		new.`Porcentaje_pcl_jrci_emitido`,
		new.`Rango_pcl_jrci_emitido`,
		new.`F_estructuracion_contro_jrci_emitido`,
		new.`Resumen_dictamen_jrci`,
		new.`F_noti_dictamen_jrci`,
		new.`F_radica_dictamen_jrci`,
		new.`F_maxima_recurso_jrci`,
		new.`Decision_dictamen_jrci`,
		new.`Causal_decision_jrci`,
		new.`Sustentacion_concepto_jrci`,
		new.`F_sustenta_jrci`,
		new.`F_notificacion_recurso_jrci`,
		new.`N_radicado_recurso_jrci`,
		new.`Termino_contro_propia_jrci`,
		new.`Firmeza_intere_contro_jrci`,
		new.`Firmeza_reposicion_jrci`,
		new.`Firmeza_acta_ejecutoria_jrci`,
		new.`Firmeza_apelacion_jnci_jrci`,
		new.`Parte_contro_ante_jrci`,
		new.`Nombre_presen_contro_jrci`,
		new.`F_contro_otra_jrci`,
		new.`Contro_origen_jrci`,
		new.`Contro_pcl_jrci`,
		new.`Contro_diagnostico_jrci`,
		new.`Contro_f_estructura_jrci`,
		new.`Contro_m_califi_jrci`,
		new.`Reposicion_dictamen_jrci`,
		new.`N_dictamen_reposicion_jrci`,
		new.`F_dictamen_reposicion_jrci`,
		new.`Origen_reposicion_jrci`,
		new.`Manual_reposicion_jrci`,
		new.`Total_deficiencia_reposicion_jrci`,
		new.`Total_reposicion_jrci`,
		new.`Total_discapacidad_reposicion_jrci`,
		new.`Total_minusvalia_reposicion_jrci`,
		new.`Porcentaje_pcl_reposicion_jrci`,
		new.`F_estructuracion_contro_reposicion_jrci`,
		new.`Resumen_dictamen_reposicion_jrci`,
		new.`F_noti_dictamen_reposicion_jrci`,
		new.`F_radica_dictamen_reposicion_jrci`,
		new.`F_maxima_apelacion_jrci`,
		new.`Rango_pcl_reposicion_jrci`,
		new.`Decision_dictamen_repo_jrci`,
		new.`Causal_decision_repo_jrci`,
		new.`Sustentacion_concepto_repo_jrci`,
		new.`F_sustenta_reposicion_jrci`,
		new.`F_noti_apela_recurso_jrci`,
		new.`N_radicado_apela_recurso_jrci`,
		new.`T_propia_apela_recurso_jrci`,
		new.`Correspon_pago_jnci`,
		new.`N_orden_pago_jnci`,
		new.`F_orden_pago_jnci`,
		new.`F_radi_pago_jnci`,
		new.`N_acta_ejecutario_emitida_jrci`,
		new.`F_acta_ejecutoria_emitida_jrci`,
		new.`F_firmeza_dictamen_jrci`,
		new.`Dictamen_firme_jrci`,
		new.`N_dictamen_jnci_emitido`,
		new.`F_dictamen_jnci_emitido`,
		new.`Origen_jnci_emitido`,
		new.`Manual_de_califi_jnci_emitido`,
		new.`Total_deficiencia_jnci_emitido`,
		new.`Total_rol_ocupacional_jnci_emitido`,
		new.`Total_discapacidad_jnci_emitido`,
		new.`Total_minusvalia_jnci_emitido`,
		new.`Porcentaje_pcl_jnci_emitido`,
		new.`Rango_pcl_jnci_emitido`,
		new.`F_estructuracion_contro_jnci_emitido`,
		new.`Resumen_dictamen_jnci`,
		new.`Sustentacion_dictamen_jnci`,
		new.`F_sustenta_ante_jnci`,
		new.`F_noti_ante_jnci`,
		new.`F_radica_dictamen_jnci`,
		new.`F_plazo_controversia`,
		new.`F_envio_jnci`,
		new.`Observaciones`,
		new.`Id_Asignacion_Servicio_Anterior`,
		new.`Nombre_usuario`,
		new.`F_registro`
	);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `sigmel_informacion_controversia_juntas_eventos_BEFORE_UPDATE` BEFORE UPDATE ON `sigmel_informacion_controversia_juntas_eventos` FOR EACH ROW BEGIN

    -- Calcula Fecha máxima para plazo de controversia
	IF NEW.F_notifi_afiliado IS NOT NULL THEN
		-- Realiza operacion de dia 
		set NEW.F_plazo_controversia = sigmel_gestiones.fnCalcularDiasHabilesV2(NEW.F_notifi_afiliado,null);
	else
    set NEW.F_plazo_controversia = null;
    END IF;
    
    
    -- Calcula Fecha máxima para recurso ante JRCI -Modificado en psb43, control desde el codigo.
	-- IF NEW.F_radica_dictamen_jrci IS NOT NULL THEN
		-- Realiza operacion de dia 
		-- set NEW.F_maxima_recurso_jrci = sigmel_gestiones.fnCalcularDiasHabiles(NEW.F_radica_dictamen_jrci,NULL);
	-- END IF;
    
    -- Calcula Fecha máxima para reposicion ante JRCI
	IF NEW.F_radica_dictamen_reposicion_jrci IS NOT NULL THEN
		-- Realiza operacion de dia 
		set NEW.F_maxima_apelacion_jrci = sigmel_gestiones.fnCalcularDiasHabiles(NEW.F_radica_dictamen_reposicion_jrci,NULL);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_controversia_juntas_eventos_update` AFTER UPDATE ON `sigmel_informacion_controversia_juntas_eventos` FOR EACH ROW BEGIN
INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_controversia_juntas_eventos`
	(
		`Aud_Id_Contro_Junta`,
		`Aud_ID_evento`,
		`Aud_Id_Asignacion`,
		`Aud_Id_proceso`,
		`Aud_Enfermedad_heredada`,
		`Aud_F_transferencia_enfermedad`,
		`Aud_Primer_calificador`,
		`Aud_Nom_entidad`,
		`Aud_N_dictamen_controvertido`,
		`Aud_F_dictamen_controvertido`,
		`Aud_N_siniestro`,
		`Aud_F_notifi_afiliado`,
		`Aud_Parte_controvierte_califi`,
		`Aud_Nombre_controvierte_califi`,
		`Aud_N_radicado_entrada_contro`,
		`Aud_Contro_origen`,
		`Aud_Contro_pcl`,
		`Aud_Contro_diagnostico`,
		`Aud_Contro_f_estructura`,
		`Aud_Contro_m_califi`,
		`Aud_F_contro_primer_califi`,
		`Aud_F_contro_radi_califi`,
		`Aud_Termino_contro_califi`,
		`Aud_Jrci_califi_invalidez`,
		`Aud_Origen_controversia`,
		`Aud_Manual_de_califi`,
		`Aud_Total_deficiencia`,
		`Aud_Total_rol_ocupacional`,
		`Aud_Total_discapacidad`,
		`Aud_Total_minusvalia`,
		`Aud_Porcentaje_pcl`,
		`Aud_Rango_pcl`,
		`Aud_N_pago_jnci_contro`,
		`Aud_F_estructuracion_contro`,
		`Aud_F_pago_jnci_contro`,
		`Aud_F_radica_pago_jnci_contro`,
		`Aud_F_envio_jrci`,
		`Aud_N_dictamen_jrci_emitido`,
		`Aud_F_dictamen_jrci_emitido`,
		`Aud_Origen_jrci_emitido`,
		`Aud_Manual_de_califi_jrci_emitido`,
		`Aud_Total_deficiencia_jrci_emitido`,
		`Aud_Total_rol_ocupacional_jrci_emitido`,
		`Aud_Total_discapacidad_jrci_emitido`,
		`Aud_Total_minusvalia_jrci_emitido`,
		`Aud_Porcentaje_pcl_jrci_emitido`,
		`Aud_Rango_pcl_jrci_emitido`,
		`Aud_F_estructuracion_contro_jrci_emitido`,
		`Aud_Resumen_dictamen_jrci`,
		`Aud_F_noti_dictamen_jrci`,
		`Aud_F_radica_dictamen_jrci`,
		`Aud_F_maxima_recurso_jrci`,
		`Aud_Decision_dictamen_jrci`,
		`Aud_Causal_decision_jrci`,
		`Aud_Sustentacion_concepto_jrci`,
		`Aud_F_sustenta_jrci`,
		`Aud_F_notificacion_recurso_jrci`,
		`Aud_N_radicado_recurso_jrci`,
		`Aud_Termino_contro_propia_jrci`,
		`Aud_Firmeza_intere_contro_jrci`,
		`Aud_Firmeza_reposicion_jrci`,
		`Aud_Firmeza_acta_ejecutoria_jrci`,
		`Aud_Firmeza_apelacion_jnci_jrci`,
		`Aud_Parte_contro_ante_jrci`,
		`Aud_Nombre_presen_contro_jrci`,
		`Aud_F_contro_otra_jrci`,
		`Aud_Contro_origen_jrci`,
		`Aud_Contro_pcl_jrci`,
		`Aud_Contro_diagnostico_jrci`,
		`Aud_Contro_f_estructura_jrci`,
		`Aud_Contro_m_califi_jrci`,
		`Aud_Reposicion_dictamen_jrci`,
		`Aud_N_dictamen_reposicion_jrci`,
		`Aud_F_dictamen_reposicion_jrci`,
		`Aud_Origen_reposicion_jrci`,
		`Aud_Manual_reposicion_jrci`,
		`Aud_Total_deficiencia_reposicion_jrci`,
		`Aud_Total_reposicion_jrci`,
		`Aud_Total_discapacidad_reposicion_jrci`,
		`Aud_Total_minusvalia_reposicion_jrci`,
		`Aud_Porcentaje_pcl_reposicion_jrci`,
		`Aud_F_estructuracion_contro_reposicion_jrci`,
		`Aud_Resumen_dictamen_reposicion_jrci`,
		`Aud_F_noti_dictamen_reposicion_jrci`,
		`Aud_F_radica_dictamen_reposicion_jrci`,
		`Aud_F_maxima_apelacion_jrci`,
		`Aud_Rango_pcl_reposicion_jrci`,
		`Aud_Decision_dictamen_repo_jrci`,
		`Aud_Causal_decision_repo_jrci`,
		`Aud_Sustentacion_concepto_repo_jrci`,
		`Aud_F_sustenta_reposicion_jrci`,
		`Aud_F_noti_apela_recurso_jrci`,
		`Aud_N_radicado_apela_recurso_jrci`,
		`Aud_T_propia_apela_recurso_jrci`,
		`Aud_Correspon_pago_jnci`,
		`Aud_N_orden_pago_jnci`,
		`Aud_F_orden_pago_jnci`,
		`Aud_F_radi_pago_jnci`,
		`Aud_N_acta_ejecutario_emitida_jrci`,
		`Aud_F_acta_ejecutoria_emitida_jrci`,
		`Aud_F_firmeza_dictamen_jrci`,
		`Aud_Dictamen_firme_jrci`,
		`Aud_N_dictamen_jnci_emitido`,
		`Aud_F_dictamen_jnci_emitido`,
		`Aud_Origen_jnci_emitido`,
		`Aud_Manual_de_califi_jnci_emitido`,
		`Aud_Total_deficiencia_jnci_emitido`,
		`Aud_Total_rol_ocupacional_jnci_emitido`,
		`Aud_Total_discapacidad_jnci_emitido`,
		`Aud_Total_minusvalia_jnci_emitido`,
		`Aud_Porcentaje_pcl_jnci_emitido`,
		`Aud_Rango_pcl_jnci_emitido`,
		`Aud_F_estructuracion_contro_jnci_emitido`,
		`Aud_Resumen_dictamen_jnci`,
		`Aud_Sustentacion_dictamen_jnci`,
		`Aud_F_sustenta_ante_jnci`,
		`Aud_F_noti_ante_jnci`,
		`Aud_F_radica_dictamen_jnci`,
		`Aud_F_plazo_controversia`,
		`Aud_F_envio_jnci`,
		`Aud_Observaciones`,
		`Aud_Id_Asignacion_Servicio_Anterior`,
		`Aud_Nombre_usuario`,
		`Aud_F_registro`
	)VALUES(
		new.`Id_Contro_Junta`,
		new.`ID_evento`,
		new.`Id_Asignacion`,
		new.`Id_proceso`,
		new.`Enfermedad_heredada`,
		new.`F_transferencia_enfermedad`,
		new.`Primer_calificador`,
		new.`Nom_entidad`,
		new.`N_dictamen_controvertido`,
		new.`F_dictamen_controvertido`,
		new.`N_siniestro`,
		new.`F_notifi_afiliado`,
		new.`Parte_controvierte_califi`,
		new.`Nombre_controvierte_califi`,
		new.`N_radicado_entrada_contro`,
		new.`Contro_origen`,
		new.`Contro_pcl`,
		new.`Contro_diagnostico`,
		new.`Contro_f_estructura`,
		new.`Contro_m_califi`,
		new.`F_contro_primer_califi`,
		new.`F_contro_radi_califi`,
		new.`Termino_contro_califi`,
		new.`Jrci_califi_invalidez`,
		new.`Origen_controversia`,
		new.`Manual_de_califi`,
		new.`Total_deficiencia`,
		new.`Total_rol_ocupacional`,
		new.`Total_discapacidad`,
		new.`Total_minusvalia`,
		new.`Porcentaje_pcl`,
		new.`Rango_pcl`,
		new.`N_pago_jnci_contro`,
		new.`F_estructuracion_contro`,
		new.`F_pago_jnci_contro`,
		new.`F_radica_pago_jnci_contro`,
		new.`F_envio_jrci`,
		new.`N_dictamen_jrci_emitido`,
		new.`F_dictamen_jrci_emitido`,
		new.`Origen_jrci_emitido`,
		new.`Manual_de_califi_jrci_emitido`,
		new.`Total_deficiencia_jrci_emitido`,
		new.`Total_rol_ocupacional_jrci_emitido`,
		new.`Total_discapacidad_jrci_emitido`,
		new.`Total_minusvalia_jrci_emitido`,
		new.`Porcentaje_pcl_jrci_emitido`,
		new.`Rango_pcl_jrci_emitido`,
		new.`F_estructuracion_contro_jrci_emitido`,
		new.`Resumen_dictamen_jrci`,
		new.`F_noti_dictamen_jrci`,
		new.`F_radica_dictamen_jrci`,
		new.`F_maxima_recurso_jrci`,
		new.`Decision_dictamen_jrci`,
		new.`Causal_decision_jrci`,
		new.`Sustentacion_concepto_jrci`,
		new.`F_sustenta_jrci`,
		new.`F_notificacion_recurso_jrci`,
		new.`N_radicado_recurso_jrci`,
		new.`Termino_contro_propia_jrci`,
		new.`Firmeza_intere_contro_jrci`,
		new.`Firmeza_reposicion_jrci`,
		new.`Firmeza_acta_ejecutoria_jrci`,
		new.`Firmeza_apelacion_jnci_jrci`,
		new.`Parte_contro_ante_jrci`,
		new.`Nombre_presen_contro_jrci`,
		new.`F_contro_otra_jrci`,
		new.`Contro_origen_jrci`,
		new.`Contro_pcl_jrci`,
		new.`Contro_diagnostico_jrci`,
		new.`Contro_f_estructura_jrci`,
		new.`Contro_m_califi_jrci`,
		new.`Reposicion_dictamen_jrci`,
		new.`N_dictamen_reposicion_jrci`,
		new.`F_dictamen_reposicion_jrci`,
		new.`Origen_reposicion_jrci`,
		new.`Manual_reposicion_jrci`,
		new.`Total_deficiencia_reposicion_jrci`,
		new.`Total_reposicion_jrci`,
		new.`Total_discapacidad_reposicion_jrci`,
		new.`Total_minusvalia_reposicion_jrci`,
		new.`Porcentaje_pcl_reposicion_jrci`,
		new.`F_estructuracion_contro_reposicion_jrci`,
		new.`Resumen_dictamen_reposicion_jrci`,
		new.`F_noti_dictamen_reposicion_jrci`,
		new.`F_radica_dictamen_reposicion_jrci`,
		new.`F_maxima_apelacion_jrci`,
		new.`Rango_pcl_reposicion_jrci`,
		new.`Decision_dictamen_repo_jrci`,
		new.`Causal_decision_repo_jrci`,
		new.`Sustentacion_concepto_repo_jrci`,
		new.`F_sustenta_reposicion_jrci`,
		new.`F_noti_apela_recurso_jrci`,
		new.`N_radicado_apela_recurso_jrci`,
		new.`T_propia_apela_recurso_jrci`,
		new.`Correspon_pago_jnci`,
		new.`N_orden_pago_jnci`,
		new.`F_orden_pago_jnci`,
		new.`F_radi_pago_jnci`,
		new.`N_acta_ejecutario_emitida_jrci`,
		new.`F_acta_ejecutoria_emitida_jrci`,
		new.`F_firmeza_dictamen_jrci`,
		new.`Dictamen_firme_jrci`,
		new.`N_dictamen_jnci_emitido`,
		new.`F_dictamen_jnci_emitido`,
		new.`Origen_jnci_emitido`,
		new.`Manual_de_califi_jnci_emitido`,
		new.`Total_deficiencia_jnci_emitido`,
		new.`Total_rol_ocupacional_jnci_emitido`,
		new.`Total_discapacidad_jnci_emitido`,
		new.`Total_minusvalia_jnci_emitido`,
		new.`Porcentaje_pcl_jnci_emitido`,
		new.`Rango_pcl_jnci_emitido`,
		new.`F_estructuracion_contro_jnci_emitido`,
		new.`Resumen_dictamen_jnci`,
		new.`Sustentacion_dictamen_jnci`,
		new.`F_sustenta_ante_jnci`,
		new.`F_noti_ante_jnci`,
		new.`F_radica_dictamen_jnci`,
		new.`F_plazo_controversia`,
		new.`F_envio_jnci`,
		new.`Observaciones`,
		new.`Id_Asignacion_Servicio_Anterior`,
		new.`Nombre_usuario`,
		new.`F_registro`
	);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_correspondencia_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_correspondencia_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_correspondencia_eventos` (
  `Id_Correspondencia` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_servicio` int NOT NULL,
  `Id_comunicado` int NOT NULL,
  `Nombre_afiliado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_identificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_radicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `N_orden` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tipo_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Departamento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Ciudad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Email_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Medio_notificacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_guia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Folios` int DEFAULT NULL,
  `F_envio` date DEFAULT NULL,
  `F_notificacion` date DEFAULT NULL,
  `Id_Estado_corresp` int NOT NULL,
  `Tipo_correspondencia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado_correspondencia` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `Id_destinatario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Correspondencia`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_decreto_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_decreto_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_decreto_eventos` (
  `Id_decreto` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Evento` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Origen_firme` int NOT NULL,
  `Cobertura` int NOT NULL,
  `Decreto_calificacion` int NOT NULL,
  `Numero_dictamen` varchar(7) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PCL_anterior` text COLLATE utf8mb3_unicode_ci,
  `Descripcion_nueva_calificacion` text COLLATE utf8mb3_unicode_ci,
  `Relacion_documentos` text COLLATE utf8mb3_unicode_ci,
  `Otros_relacion_doc` text COLLATE utf8mb3_unicode_ci,
  `Descripcion_enfermedad_actual` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Historial_sociofamiliar` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Suma_combinada` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_Deficiencia50` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Porcentaje_pcl` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Rango_pcl` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Monto_indemnizacion` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tipo_evento` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Origen` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_evento` date NOT NULL,
  `F_estructuracion` date NOT NULL,
  `Requiere_Revision_Pension` text COLLATE utf8mb3_unicode_ci,
  `Sustentacion_F_estructuracion` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Detalle_calificacion` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `Enfermedad_catastrofica` text COLLATE utf8mb3_unicode_ci,
  `Enfermedad_congenita` text COLLATE utf8mb3_unicode_ci,
  `Tipo_enfermedad` text COLLATE utf8mb3_unicode_ci,
  `Requiere_tercera_persona` text COLLATE utf8mb3_unicode_ci,
  `Requiere_tercera_persona_decisiones` text COLLATE utf8mb3_unicode_ci,
  `Requiere_dispositivo_apoyo` text COLLATE utf8mb3_unicode_ci,
  `Justificacion_dependencia` text COLLATE utf8mb3_unicode_ci,
  `N_radicado` text COLLATE utf8mb3_unicode_ci,
  `N_siniestro` text COLLATE utf8mb3_unicode_ci,
  `Estado_decreto` text COLLATE utf8mb3_unicode_ci,
  `Modalidad_calificacion` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_decreto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_deficiencias_alteraciones_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_deficiencias_alteraciones_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_deficiencias_alteraciones_eventos` (
  `Id_Deficiencia` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_tabla` int DEFAULT NULL,
  `FP` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CFM1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CFM2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `FU` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CAT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Clase_Final` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Dx_Principal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MSD` enum('Si','No','N/A') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tabla1999` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Titulo_tabla1999` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Dominancia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Deficiencia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Total_deficiencia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Deficiencia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_diagnosticos_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_diagnosticos_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_diagnosticos_eventos` (
  `Id_Diagnosticos_motcali` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `CIE10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_CIE10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Origen_CIE10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Lateralidad_CIE10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Deficiencia_motivo_califi_condiciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Principal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_adicion_CIE10` date DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Dx_Adicionado` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Item_servicio` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` datetime NOT NULL,
  PRIMARY KEY (`Id_Diagnosticos_motcali`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_documentos_solicitados_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_documentos_solicitados_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_documentos_solicitados_eventos` (
  `Id_Documento_Solicitado` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `F_solicitud_documento` date DEFAULT NULL,
  `Id_Documento` int DEFAULT NULL,
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_solicitante` int DEFAULT NULL,
  `Nombre_solicitante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_recepcion_documento` date DEFAULT NULL,
  `Articulo_12` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Grupo_documental` int DEFAULT '0',
  `Aporta_documento` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Documento_Solicitado`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_info_documentos_solicitados_eventos_insert` AFTER INSERT ON `sigmel_informacion_documentos_solicitados_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_documentos_solicitados_eventos`
	(`Aud_Id_Documento_Solicitado`,
	`Aud_ID_evento`,
	`Aud_Id_Asignacion`,
	`Aud_Id_proceso`,
	`Aud_F_solicitud_documento`,
	`Aud_Id_Documento`,
	`Aud_Nombre_documento`,
	`Aud_Descripcion`,
	`Aud_Id_solicitante`,
	`Aud_Nombre_solicitante`,
	`Aud_F_recepcion_documento`,
	`Aud_Aporta_documento`,
	`Aud_Estado`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
    VALUES(
    new.`Id_Documento_Solicitado`,
	new.`ID_evento`,
	new.`Id_Asignacion`,
	new.`Id_proceso`,
	new.`F_solicitud_documento`,
	new.`Id_Documento`,
	new.`Nombre_documento`,
	new.`Descripcion`,
	new.`Id_solicitante`,
	new.`Nombre_solicitante`,
	new.`F_recepcion_documento`,
	new.`Aporta_documento`,
	new.`Estado`,
	new.`Nombre_usuario`,
	new.`F_registro`
    );/* poner punto y coma (;) para correr el trigger en el gestor */
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_info_documentos_solicitados_eventos_update` AFTER UPDATE ON `sigmel_informacion_documentos_solicitados_eventos` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_documentos_solicitados_eventos`
	(`Aud_Id_Documento_Solicitado`,
	`Aud_ID_evento`,
	`Aud_Id_Asignacion`,
	`Aud_Id_proceso`,
	`Aud_F_solicitud_documento`,
	`Aud_Id_Documento`,
	`Aud_Nombre_documento`,
	`Aud_Descripcion`,
	`Aud_Id_solicitante`,
	`Aud_Nombre_solicitante`,
	`Aud_F_recepcion_documento`,
	`Aud_Aporta_documento`,
	`Aud_Estado`,
	`Aud_Nombre_usuario`,
	`Aud_F_registro`)
    VALUES(
    new.`Id_Documento_Solicitado`,
	new.`ID_evento`,
	new.`Id_Asignacion`,
	new.`Id_proceso`,
	new.`F_solicitud_documento`,
	new.`Id_Documento`,
	new.`Nombre_documento`,
	new.`Descripcion`,
	new.`Id_solicitante`,
	new.`Nombre_solicitante`,
	new.`F_recepcion_documento`,
	new.`Aporta_documento`,
	new.`Estado`,
	new.`Nombre_usuario`,
	new.`F_registro`
    );/* poner punto y coma (;) para correr el trigger en el gestor */
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_dto_atel_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_dto_atel_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_dto_atel_eventos` (
  `Id_Dto_ATEL` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Activo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_evento` int DEFAULT NULL,
  `Fecha_dictamen` date DEFAULT NULL,
  `Numero_dictamen` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_accidente` int DEFAULT NULL,
  `Fecha_evento` date DEFAULT NULL,
  `Hora_evento` time DEFAULT NULL,
  `Grado_severidad` int DEFAULT NULL,
  `Mortal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fecha_fallecimiento` date DEFAULT NULL,
  `Descripcion_FURAT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Factor_riesgo` int DEFAULT NULL,
  `Tipo_lesion` int DEFAULT NULL,
  `Parte_cuerpo_afectada` int DEFAULT NULL,
  `Fecha_diagnostico_enfermedad` date DEFAULT NULL,
  `Enfermedad_heredada` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_entidad_hereda` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Justificacion_revision_origen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Relacion_documentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otros_relacion_documentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustentacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Origen` int DEFAULT NULL,
  `N_radicado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_siniestro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Dto_ATEL`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_entidades`
--

DROP TABLE IF EXISTS `sigmel_informacion_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_entidades` (
  `Id_Entidad` int unsigned NOT NULL AUTO_INCREMENT,
  `IdTipo_entidad` int NOT NULL,
  `Otro_entidad` varchar(50) DEFAULT NULL,
  `Nombre_entidad` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nit_simple` varchar(45) DEFAULT NULL,
  `Nit_entidad` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Telefonos` text,
  `Otros_Telefonos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Emails` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Otros_Emails` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Id_Departamento` int DEFAULT NULL,
  `Id_Ciudad` int DEFAULT NULL,
  `Id_Medio_Noti` int DEFAULT NULL,
  `Sucursal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Dirigido` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Estado_entidad` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Entidad`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_eventos` (
  `Id_Eventos` int unsigned NOT NULL AUTO_INCREMENT,
  `estado_evento` enum('activo','inactivo') COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `Cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tipo_cliente` int NOT NULL,
  `Tipo_evento` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_evento` date DEFAULT NULL,
  `F_radicacion` date NOT NULL,
  `N_siniestro` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Activador` int NOT NULL,
  `N_Radicado_HC` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Eventos`),
  KEY `ID_evento` (`ID_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_examenes_interconsultas_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_examenes_interconsultas_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_examenes_interconsultas_eventos` (
  `Id_Examenes_interconsultas` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `F_examen_interconsulta` date DEFAULT NULL,
  `Nombre_examen_interconsulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Examenes_interconsultas`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_expedientes_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_expedientes_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_expedientes_eventos` (
  `Id_expedientes` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Documento` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Formato_documento` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `Posicion` int DEFAULT NULL,
  `Folear` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_expedientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_firmas_clientes`
--

DROP TABLE IF EXISTS `sigmel_informacion_firmas_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_firmas_clientes` (
  `Id_firma` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Nombre_firmante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Cargo_firmante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Firma` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_firma`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_firmas_proveedores`
--

DROP TABLE IF EXISTS `sigmel_informacion_firmas_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_firmas_proveedores` (
  `Id_firma` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Nombre_firmante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Cargo_firmante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Firma` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_firma`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_historial_accion_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_historial_accion_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_historial_accion_eventos` (
  `Id_historial_accion` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Asignacion` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Id_accion` int DEFAULT NULL,
  `Documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `F_accion` datetime DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`Id_historial_accion`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_laboral_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_laboral_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_laboral_eventos` (
  `Id_Laboral` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nro_identificacion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tipo_empleado` enum('Empleado actual','Independiente','Beneficiario') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_arl` int DEFAULT NULL,
  `Empresa` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nit_o_cc` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Telefono_empresa` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_departamento` int DEFAULT NULL,
  `Id_municipio` int DEFAULT NULL,
  `Id_actividad_economica` int DEFAULT NULL,
  `Id_clase_riesgo` int DEFAULT NULL,
  `Persona_contacto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_persona_contacto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_codigo_ciuo` int DEFAULT NULL,
  `F_ingreso` date DEFAULT NULL,
  `Cargo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Funciones_cargo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Antiguedad_empresa` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Antiguedad_cargo_empresa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `F_retiro` date DEFAULT NULL,
  `Medio_notificacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Laboral`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_laboralmente_activo_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_laboralmente_activo_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_laboralmente_activo_eventos` (
  `Id_Laboral_activo` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Restricciones_rol` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Autosuficiencia_economica` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Edad_cronologica_menor` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Edad_cronologica` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_rol_laboral` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_mirar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_escuchar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_aprender` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_calcular` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_pensar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_leer` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_escribir` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_matematicos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_resolver` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_tareas` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Aprendizaje_total` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_verbales` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_noverbales` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_formal` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_escritos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_habla` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_produccion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_mensajes` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_conversacion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_discusiones` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_dispositivos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion_total` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_cambiar_posturas` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_mantener_posicion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_objetos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_uso_mano` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_mano_brazo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_Andar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_desplazarse` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_equipo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_transporte` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_conduccion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Movilidad_total` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_lavarse` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_partes_cuerpo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_higiene` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_vestirse` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_quitarse` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_ponerse_calzado` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_comer` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_beber` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_salud` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_dieta` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Cuidado_total` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_vivir` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_bienes` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_comprar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_comidas` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_quehaceres` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_limpieza` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_objetos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_ayudar` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_mantenimiento` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_animales` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Domestica_total` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_otras_areas` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_laboral_otras_areas` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Laboral_activo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_libro2_libro3_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_libro2_libro3_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_libro2_libro3_eventos` (
  `Id_Libros` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Conducta10` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta11` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta12` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta13` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta14` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta15` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta16` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta17` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta18` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Conducta19` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_conducta` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion20` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion21` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion22` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion23` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion24` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion25` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion26` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion27` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion28` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Comunicacion29` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_comunicacion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal30` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal31` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal32` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal33` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal34` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal35` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal36` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal37` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal38` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Personal39` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_personal` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion40` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion41` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion42` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion43` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion44` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion45` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion46` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion47` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion48` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Locomocion49` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_locomocion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion50` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion51` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion52` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion53` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion54` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion55` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion56` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion57` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion58` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Disposicion59` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_disposicion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza60` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza61` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza62` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza63` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza64` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza65` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza66` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza67` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza68` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Destreza69` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_destreza` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion70` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion71` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion72` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion73` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion74` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion75` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion76` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion77` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Situacion78` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_situacion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_discapacidad` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Orientacion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Idenpendencia_fisica` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Desplazamiento` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Ocupacional` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Integracion` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Autosuficiencia` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Edad_cronologica_menor` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Edad_cronologica_adulto` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_minusvalia` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Libros`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_pagos_honorarios_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_pagos_honorarios_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_pagos_honorarios_eventos` (
  `Id_pago` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Tipo_pago` int DEFAULT NULL,
  `F_solicitud_pago` date DEFAULT NULL,
  `Pago_junta` int DEFAULT NULL,
  `N_orden_pago` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Valor_pagado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_pago_honorarios` date DEFAULT NULL,
  `F_pago_radicacion` date DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_parametrizaciones_clientes`
--

DROP TABLE IF EXISTS `sigmel_informacion_parametrizaciones_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_parametrizaciones_clientes` (
  `Id_parametrizacion` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int NOT NULL,
  `Id_proceso` int DEFAULT NULL,
  `F_creacion_movimiento` date DEFAULT NULL,
  `Servicio_asociado` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  `Accion_ejecutar` int DEFAULT NULL,
  `Accion_antecesora` int DEFAULT NULL,
  `Modulo_nuevo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Modulo_consultar` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Bandeja_trabajo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Modulo_principal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Detiene_tiempo_gestion` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Equipo_trabajo` int DEFAULT NULL,
  `Profesional_asignado` int DEFAULT NULL,
  `Enviar_a_bandeja_trabajo_destino` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Bandeja_trabajo_destino` int DEFAULT NULL,
  `Estado_facturacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Movimiento_automatico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Tiempo_movimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Accion_automatica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Tiempo_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Porcentaje_alerta_naranja` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Porcentaje_alerta_roja` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Status_parametrico` enum('Activo','Inactivado') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motivo_descripcion_movimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_actualizacion_movimiento` date DEFAULT NULL,
  PRIMARY KEY (`Id_parametrizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_sigmel_informacion_parametrizaciones_clientes_insert` AFTER INSERT ON `sigmel_informacion_parametrizaciones_clientes` FOR EACH ROW BEGIN
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_parametrizaciones_clientes`
    (
		`Aud_Id_parametrizacion`,
		`Aud_Id_cliente`,
		`Aud_Id_proceso`,
		`Aud_F_creacion_movimiento`,
		`Aud_Servicio_asociado`,
		`Aud_Estado`,
		`Aud_Accion_ejecutar`,
		`Aud_Accion_antecesora`,
		`Aud_Modulo_nuevo`,
		`Aud_Modulo_consultar`,
		`Aud_Bandeja_trabajo`,
		`Aud_Modulo_principal`,
		`Aud_Detiene_tiempo_gestion`,
		`Aud_Enviar_a_bandeja_trabajo_destino`,
		`Aud_Bandeja_trabajo_destino`,
		`Aud_Estado_facturacion`,
		`Aud_Tiempo_alerta`,
		`Aud_Porcentaje_alerta_naranja`,
		`Aud_Porcentaje_alerta_roja`,
		`Aud_Equipo_trabajo`,
		`Aud_Status_parametrico`,
		`Aud_Motivo_descripcion_movimiento`,
		`Aud_Nombre_usuario`,
		`Aud_F_actualizacion_movimiento`
    )VALUES(
		new.`Id_parametrizacion`,
		new.`Id_cliente`,
		new.`Id_proceso`,
		new.`F_creacion_movimiento`,
		new.`Servicio_asociado`,
		new.`Estado`,
		new.`Accion_ejecutar`,
		new.`Accion_antecesora`,
		new.`Modulo_nuevo`,
		new.`Modulo_consultar`,
		new.`Bandeja_trabajo`,
		new.`Modulo_principal`,
		new.`Detiene_tiempo_gestion`,
		new.`Enviar_a_bandeja_trabajo_destino`,
		new.`Bandeja_trabajo_destino`,
		new.`Estado_facturacion`,
		new.`Tiempo_alerta`,
		new.`Porcentaje_alerta_naranja`,
		new.`Porcentaje_alerta_roja`,
		new.`Equipo_trabajo`,
		new.`Status_parametrico`,
		new.`Motivo_descripcion_movimiento`,
		new.`Nombre_usuario`,
		new.`F_actualizacion_movimiento`
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`developer`@`%`*/ /*!50003 TRIGGER `Auditoria_parametrizacion_Historial_campos_update` AFTER UPDATE ON `sigmel_informacion_parametrizaciones_clientes` FOR EACH ROW BEGIN
	DECLARE Historial VARCHAR(50);
    DECLARE Campo VARCHAR(50);
    SET Historial = '';
	SET Campo ='';
    IF NEW.Modulo_nuevo <> OLD.Modulo_nuevo THEN
        SET Historial = CONCAT(Historial, NEW.Modulo_nuevo);
        SET Campo ='Modulo_nuevo';
    END IF;
    
	IF Historial <> '' THEN
        INSERT INTO sigmel_auditorias.Tabla_prueba_auditoria_parame (Aud_Id_parametrizacion, Aud_Id_cliente, Aud_Id_proceso, Aud_Nombre_Campo, Aud_Registro_Anterior, Aud_Registro_Actual, Aud_F_Cambio) 
        VALUES (OLD.Id_parametrizacion, OLD.Id_cliente,  OLD.Id_proceso, Campo, OLD.Modulo_nuevo, Historial, NEW.F_actualizacion_movimiento);
    END IF;
    
    SET Historial = '';
    SET Campo ='';
    IF NEW.Modulo_consultar <> OLD.Modulo_consultar THEN
        SET Historial = CONCAT(Historial, NEW.Modulo_consultar);
		SET Campo ='Modulo_consultar';
    END IF;
    
    IF Historial <> '' THEN
        INSERT INTO sigmel_auditorias.Tabla_prueba_auditoria_parame (Aud_Id_parametrizacion, Aud_Id_cliente, Aud_Id_proceso, Aud_Nombre_Campo, Aud_Registro_Anterior, Aud_Registro_Actual, Aud_F_Cambio) 
        VALUES (OLD.Id_parametrizacion, OLD.Id_cliente, OLD.Id_proceso, Campo, OLD.Modulo_consultar, Historial, NEW.F_actualizacion_movimiento);
    END IF;

	SET Historial = '';
	SET Campo ='';
    IF NEW.Bandeja_trabajo <> OLD.Bandeja_trabajo THEN
        SET Historial = CONCAT(Historial, NEW.Bandeja_trabajo);
        SET Campo ='Bandeja_trabajo';
    END IF;
    
    IF Historial <> '' THEN
        INSERT INTO sigmel_auditorias.Tabla_prueba_auditoria_parame (Aud_Id_parametrizacion, Aud_Id_cliente, Aud_Id_proceso, Aud_Nombre_Campo, Aud_Registro_Anterior, Aud_Registro_Actual, Aud_F_Cambio) 
        VALUES (OLD.Id_parametrizacion, OLD.Id_cliente, OLD.Id_proceso, Campo, OLD.Bandeja_trabajo, Historial, NEW.F_actualizacion_movimiento);
    END IF; 
    
	INSERT INTO `sigmel_auditorias`.`sigmel_auditorias_informacion_parametrizaciones_clientes`
    (
		`Aud_Id_parametrizacion`,
		`Aud_Id_cliente`,
		`Aud_Id_proceso`,
		`Aud_F_creacion_movimiento`,
		`Aud_Servicio_asociado`,
		`Aud_Estado`,
		`Aud_Accion_ejecutar`,
		`Aud_Accion_antecesora`,
		`Aud_Modulo_nuevo`,
		`Aud_Modulo_consultar`,
		`Aud_Bandeja_trabajo`,
		`Aud_Modulo_principal`,
		`Aud_Detiene_tiempo_gestion`,
		`Aud_Enviar_a_bandeja_trabajo_destino`,
		`Aud_Bandeja_trabajo_destino`,
		`Aud_Estado_facturacion`,
		`Aud_Tiempo_alerta`,
		`Aud_Porcentaje_alerta_naranja`,
		`Aud_Porcentaje_alerta_roja`,
		`Aud_Equipo_trabajo`,
		`Aud_Status_parametrico`,
		`Aud_Motivo_descripcion_movimiento`,
		`Aud_Nombre_usuario`,
		`Aud_F_actualizacion_movimiento`
    )VALUES(
		new.`Id_parametrizacion`,
		new.`Id_cliente`,
		new.`Id_proceso`,
		new.`F_creacion_movimiento`,
		new.`Servicio_asociado`,
		new.`Estado`,
		new.`Accion_ejecutar`,
		new.`Accion_antecesora`,
		new.`Modulo_nuevo`,
		new.`Modulo_consultar`,
		new.`Bandeja_trabajo`,
		new.`Modulo_principal`,
		new.`Detiene_tiempo_gestion`,
		new.`Enviar_a_bandeja_trabajo_destino`,
		new.`Bandeja_trabajo_destino`,
		new.`Estado_facturacion`,
		new.`Tiempo_alerta`,
		new.`Porcentaje_alerta_naranja`,
		new.`Porcentaje_alerta_roja`,
		new.`Equipo_trabajo`,
		new.`Status_parametrico`,
		new.`Motivo_descripcion_movimiento`,
		new.`Nombre_usuario`,
		new.`F_actualizacion_movimiento`
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sigmel_informacion_pericial_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_pericial_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_pericial_eventos` (
  `Id_Pericial` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_motivo_solicitud` int DEFAULT NULL,
  `Tipo_vinculacion` int DEFAULT NULL,
  `Regimen_salud` int DEFAULT NULL,
  `Id_solicitante` int DEFAULT NULL,
  `Id_nombre_solicitante` int DEFAULT NULL,
  `Nombre_solicitante` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Fuente_informacion` int DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Pericial`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_pronunciamiento_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_pronunciamiento_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_pronunciamiento_eventos` (
  `Id_Pronuncia` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Id_primer_calificador` int DEFAULT NULL,
  `Id_nombre_calificador` int DEFAULT NULL,
  `Nit_calificador` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Dir_calificador` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Email_calificador` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Telefono_calificador` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Depar_calificador` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Ciudad_calificador` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Id_tipo_pronunciamiento` int DEFAULT NULL,
  `Id_tipo_evento` int DEFAULT NULL,
  `Id_tipo_origen` int DEFAULT NULL,
  `Fecha_evento` date DEFAULT NULL,
  `Dictamen_calificador` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fecha_calificador` date DEFAULT NULL,
  `Fecha_estruturacion` date DEFAULT NULL,
  `Porcentaje_pcl` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Rango_pcl` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Decision` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fecha_pronuncia` datetime DEFAULT NULL,
  `Asunto_cali` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Sustenta_cali` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Destinatario_principal` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Tipo_entidad` int DEFAULT NULL,
  `Nombre_entidad` int DEFAULT NULL,
  `Copia_afiliado` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_empleador` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_eps` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_afp` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_arl` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_junta_regional` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Copia_junta_nacional` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Junta_regional_cual` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_anexos` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Elaboro_pronuncia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Reviso_pronuncia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Ciudad_correspon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_radicado` varchar(22) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `N_siniestro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Firmar` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Fecha_correspondencia` date DEFAULT NULL,
  `Archivo_pronuncia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Pronuncia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_rol_ocupacional_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_rol_ocupacional_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_rol_ocupacional_eventos` (
  `Id_Rol_ocupacional` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `Poblacion_calificar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Motriz_postura_simetrica` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_actividad_espontanea` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_sujeta_cabeza` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_sentarse_apoyo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_gira_sobre_mismo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_sentanser_sin_apoyo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_pasa_tumbado_sentado` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_pararse_apoyo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_pasos_apoyo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_pararse_sin_apoyo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_anda_solo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_empujar_pelota_pies` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Motriz_andar_obstaculos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_succiona` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_fija_mirada` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_sigue_trayectoria_objeto` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_sostiene_sonajero` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_tiende_mano_hacia_objeto` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_sostiene_objeto_manos` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_abre_cajones` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_bebe_solo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_quitar_prenda_vestir` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_reconoce_funcion_espacios_casa` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_imita_trazo_lapiz` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adaptativa_abre_puerta` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_criterios_desarrollo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Juego_estudio_clase` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_rol_estudio_clase` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Adultos_mayores` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Total_rol_adultos_ayores` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Estado_Recalificacion` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Rol_ocupacional`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_seguimientos_eventos`
--

DROP TABLE IF EXISTS `sigmel_informacion_seguimientos_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_seguimientos_eventos` (
  `Id_Seguimiento` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_Asignacion` int NOT NULL,
  `Id_proceso` int NOT NULL,
  `F_seguimiento` date NOT NULL,
  `F_estipula_seguimiento` date DEFAULT NULL,
  `Causal_seguimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Descripcion_seguimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Seguimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_servicios_contratados`
--

DROP TABLE IF EXISTS `sigmel_informacion_servicios_contratados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_servicios_contratados` (
  `Id_Servicio_Contratado` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Valor_tarifa_servicio` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Servicio_Contratado`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_informacion_sucursales_clientes`
--

DROP TABLE IF EXISTS `sigmel_informacion_sucursales_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_informacion_sucursales_clientes` (
  `Id_sucursal` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_cliente` int DEFAULT NULL,
  `Nombre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Gerente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Telefono_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otros_telefonos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Email_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otros_emails` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Linea_atencion_principal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Otras_lineas_atencion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Id_Departamento` int DEFAULT NULL,
  `Id_Ciudad` int DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_acciones_procesos_servicios`
--

DROP TABLE IF EXISTS `sigmel_lista_acciones_procesos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_acciones_procesos_servicios` (
  `Id_Accion` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_accion` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Accion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_actividad_economicas`
--

DROP TABLE IF EXISTS `sigmel_lista_actividad_economicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_actividad_economicas` (
  `Id_ActEco` int unsigned NOT NULL AUTO_INCREMENT,
  `id_codigo` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_actividad` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_ActEco`)
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_afps`
--

DROP TABLE IF EXISTS `sigmel_lista_afps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_afps` (
  `Id_Afp` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_afp` varchar(65) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Afp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_arls`
--

DROP TABLE IF EXISTS `sigmel_lista_arls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_arls` (
  `Id_Arl` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_arl` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Arl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_califi_decretos`
--

DROP TABLE IF EXISTS `sigmel_lista_califi_decretos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_califi_decretos` (
  `Id_Decreto` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_decreto` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Decreto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_causal_devoluciones`
--

DROP TABLE IF EXISTS `sigmel_lista_causal_devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_causal_devoluciones` (
  `Id_causal_devo` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_proceso` int DEFAULT NULL,
  `Causal_devolucion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_causal_devo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_causal_seguimientos`
--

DROP TABLE IF EXISTS `sigmel_lista_causal_seguimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_causal_seguimientos` (
  `Id_causal` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_causal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_causal`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_cie_diagnosticos`
--

DROP TABLE IF EXISTS `sigmel_lista_cie_diagnosticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_cie_diagnosticos` (
  `Id_Cie_diagnostico` int unsigned NOT NULL AUTO_INCREMENT,
  `CIE10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Descripcion_diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Cie_diagnostico`)
) ENGINE=InnoDB AUTO_INCREMENT=14814 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_ciuo_codigos`
--

DROP TABLE IF EXISTS `sigmel_lista_ciuo_codigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_ciuo_codigos` (
  `Id_Codigo` int unsigned NOT NULL AUTO_INCREMENT,
  `id_codigo_ciuo` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_ciuo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_clase_riesgos`
--

DROP TABLE IF EXISTS `sigmel_lista_clase_riesgos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_clase_riesgos` (
  `Id_Riesgo` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_riesgo` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Riesgo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_clases_decretos`
--

DROP TABLE IF EXISTS `sigmel_lista_clases_decretos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_clases_decretos` (
  `Id_clase` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_tabla` int NOT NULL,
  `1A` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `1B` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `1C` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `1D` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `1E` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `2A` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `2B` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `2C` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `2D` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `2E` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `3A` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `3B` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `3C` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `3D` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `3E` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `4A` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `4B` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `4C` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `4D` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `4E` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MSD` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_clase`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_clientes`
--

DROP TABLE IF EXISTS `sigmel_lista_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_clientes` (
  `Id_Cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_cliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_departamentos_municipios`
--

DROP TABLE IF EXISTS `sigmel_lista_departamentos_municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_departamentos_municipios` (
  `Id_municipios` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_departamento` int DEFAULT NULL,
  `codigo_dane` int DEFAULT NULL,
  `Nombre_departamento` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_municipio` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_municipios`)
) ENGINE=InnoDB AUTO_INCREMENT=2041 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_documentos`
--

DROP TABLE IF EXISTS `sigmel_lista_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_documentos` (
  `Id_Documento` int unsigned NOT NULL AUTO_INCREMENT,
  `Nro_documento` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Descripcion_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Requerido` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro_documento` date NOT NULL,
  PRIMARY KEY (`Id_Documento`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_dominancias`
--

DROP TABLE IF EXISTS `sigmel_lista_dominancias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_dominancias` (
  `Id_Dominancia` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_dominancia` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Dominancia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_entidades`
--

DROP TABLE IF EXISTS `sigmel_lista_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_entidades` (
  `Id_Entidad` int unsigned NOT NULL AUTO_INCREMENT,
  `Tipo_Entidad` varchar(65) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Entidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_eps`
--

DROP TABLE IF EXISTS `sigmel_lista_eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_eps` (
  `Id_Eps` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_eps` varchar(65) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Eps`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_grupo_documentales`
--

DROP TABLE IF EXISTS `sigmel_lista_grupo_documentales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_grupo_documentales` (
  `Id_documental` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Tipo_Evento` int DEFAULT NULL,
  `Id_Tipo_documento` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_documental`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_motivo_solicitudes`
--

DROP TABLE IF EXISTS `sigmel_lista_motivo_solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_motivo_solicitudes` (
  `Id_Solicitud` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_solicitud` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Solicitud`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_parametros`
--

DROP TABLE IF EXISTS `sigmel_lista_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_parametros` (
  `Id_Parametro` int unsigned NOT NULL AUTO_INCREMENT,
  `Tipo_lista` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_parametro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Parametro`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_procesos_servicios`
--

DROP TABLE IF EXISTS `sigmel_lista_procesos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_procesos_servicios` (
  `Id_Servicio` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_proceso` int NOT NULL,
  `Nombre_proceso` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_servicio` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_vista` int DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_regional_juntas`
--

DROP TABLE IF EXISTS `sigmel_lista_regional_juntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_regional_juntas` (
  `Id_juntaR` int unsigned NOT NULL AUTO_INCREMENT,
  `Ciudad_Junta` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_juntaR`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_solicitantes`
--

DROP TABLE IF EXISTS `sigmel_lista_solicitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_solicitantes` (
  `Id_Nombre_solicitante` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_solicitante` int DEFAULT NULL,
  `Solicitante` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_solicitante` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Nombre_solicitante`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_tablas_1507_decretos`
--

DROP TABLE IF EXISTS `sigmel_lista_tablas_1507_decretos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_tablas_1507_decretos` (
  `Id_tabla` int unsigned NOT NULL AUTO_INCREMENT,
  `Ident_tabla` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_tabla` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `FP` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CFM1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CFM2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `FU` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `CAT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('Activo','Inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Activo',
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_tabla`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_tipo_clientes`
--

DROP TABLE IF EXISTS `sigmel_lista_tipo_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_tipo_clientes` (
  `Id_TipoCliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_tipo_cliente` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_TipoCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_tipo_evento_documentos`
--

DROP TABLE IF EXISTS `sigmel_lista_tipo_evento_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_tipo_evento_documentos` (
  `Id_Tipo_documento` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Tipo_Evento` int DEFAULT NULL,
  `Tipo_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_lista_tipo_eventos`
--

DROP TABLE IF EXISTS `sigmel_lista_tipo_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_lista_tipo_eventos` (
  `Id_Evento` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_evento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Evento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_listado_estados_eventos`
--

DROP TABLE IF EXISTS `sigmel_listado_estados_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_listado_estados_eventos` (
  `Id_Estado` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_estado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Visible` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Si',
  PRIMARY KEY (`Id_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_numero_orden_eventos`
--

DROP TABLE IF EXISTS `sigmel_numero_orden_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_numero_orden_eventos` (
  `Id_Orden` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero_orden` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `Proceso` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'activo',
  `F_orden` date DEFAULT NULL,
  PRIMARY KEY (`Id_Orden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_registro_descarga_documentos`
--

DROP TABLE IF EXISTS `sigmel_registro_descarga_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_registro_descarga_documentos` (
  `Id_registro_documento` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_proceso` int DEFAULT NULL,
  `Id_servicio` int DEFAULT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `N_radicado_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `F_elaboracion_correspondencia` date DEFAULT NULL,
  `F_descarga_documento` date DEFAULT NULL,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`Id_registro_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_registro_documentos_eventos`
--

DROP TABLE IF EXISTS `sigmel_registro_documentos_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_registro_documentos_eventos` (
  `Id_Registro_Documento` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Asignacion` int DEFAULT NULL,
  `Id_Documento` int NOT NULL,
  `ID_evento` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Nombre_documento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Formato_documento` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Id_servicio` int DEFAULT NULL,
  `Estado` enum('activo','inactivo') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'activo',
  `Lista_chequeo` enum('Si','No') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'No',
  `Tipo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `f_cargue_documento` date DEFAULT NULL,
  `Descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Nombre_usuario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `F_registro` date NOT NULL,
  PRIMARY KEY (`Id_Registro_Documento`),
  KEY `Id_documento` (`Id_Documento`),
  KEY `ID_evento` (`ID_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_tipos_extensiones_documentos`
--

DROP TABLE IF EXISTS `sigmel_tipos_extensiones_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_tipos_extensiones_documentos` (
  `Id_Tipo` int unsigned NOT NULL AUTO_INCREMENT,
  `Tipo_extension` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sigmel_usuarios_grupos_trabajos`
--

DROP TABLE IF EXISTS `sigmel_usuarios_grupos_trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigmel_usuarios_grupos_trabajos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_equipo_trabajo` int unsigned NOT NULL,
  `id_usuarios_asignados` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=814 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_historial_accion`
--

DROP TABLE IF EXISTS `temp_historial_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_historial_accion` (
  `Id_historial_accion` int DEFAULT NULL,
  `Descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `cndatos_bandeja_eventos`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_bandeja_eventos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_bandeja_eventos` AS select `sie`.`Id_Eventos` AS `Id_Eventos`,`slc`.`Id_cliente` AS `Id_cliente`,`slc`.`Nombre_cliente` AS `Nombre_Cliente`,`siae`.`Id_Afiliado` AS `Id_Afiliado`,`siae`.`Nombre_afiliado` AS `Nombre_afiliado`,`siae`.`Tipo_documento` AS `Tipo_documento`,`slpa`.`Nombre_parametro` AS `Nombre_tipo_documento`,`siae`.`Direccion` AS `Direccion`,`siae`.`Telefono_contacto` AS `Telefono_contacto`,`siae`.`Nro_identificacion` AS `Nro_identificacion`,`siae`.`Nombre_afiliado_benefi` AS `Nombre_afiliado_benefi`,`siae`.`Apoderado` AS `Apoderado`,`siae`.`Nombre_apoderado` AS `Nombre_apoderado`,`slps`.`Id_Servicio` AS `Id_Servicio`,`slps`.`Nombre_servicio` AS `Nombre_servicio`,`siaev`.`Id_Asignacion` AS `Id_Asignacion`,`siaev`.`Id_Estado_evento` AS `Id_Estado_evento`,`slpar`.`Nombre_parametro` AS `Nombre_estado`,`siaev`.`Id_accion` AS `Id_accion`,`sia`.`Accion` AS `Accion`,`siaev`.`Id_profesional` AS `Id_profesional`,`siaev`.`Nombre_profesional` AS `Nombre_profesional`,`siaev`.`Id_calificador` AS `Id_calificador`,`siaev`.`Nombre_calificador` AS `Nombre_calificador`,`user`.`tipo_colaborador` AS `Tipo_Profesional_calificador`,`siaev`.`F_calificacion` AS `F_calificacion`,`siaev`.`F_ajuste_calificacion` AS `F_ajuste_calificacion`,`slte`.`Nombre_evento` AS `Nombre_evento`,`sie`.`ID_evento` AS `ID_evento`,`sie`.`F_evento` AS `F_evento`,`siaev`.`F_radicacion` AS `F_radicacion`,`siaev`.`Nueva_F_radicacion` AS `Nueva_F_radicacion`,`siaev`.`F_registro` AS `F_registro_asignacion`,(case when (`siaev`.`F_registro` is null) then 0 when (`siaev`.`Detener_tiempo_gestion` = 'Si') then (to_days(`siaev`.`F_detencion_tiempo_gestion`) - to_days(`siaev`.`F_registro`)) when `siaev`.`F_registro` then (to_days(date_format(curdate(),'%Y-%m-%d')) - to_days(`siaev`.`F_registro`)) else 0 end) AS `Tiempo_de_gestion`,(case when (`sie`.`F_evento` is null) then 0 when `sie`.`F_evento` then (to_days(date_format(curdate(),'%Y-%m-%d')) - to_days(`sie`.`F_evento`)) else 0 end) AS `Dias_transcurridos_desde_el_evento`,`sile`.`Empresa` AS `Empleador_afi`,concat_ws('_',`sile`.`Tipo_empleado`,`sile`.`Empresa`) AS `Empresa`,`slps`.`Id_proceso` AS `Id_proceso`,`slps`.`Nombre_proceso` AS `Nombre_proceso_actual`,`siaev`.`Id_proceso_anterior` AS `Id_proceso_anterior`,`slpspa`.`Nombre_proceso` AS `Nombre_proceso_anterior`,`siaev`.`Id_servicio_anterior` AS `Id_servicio_anterior`,`slpspa`.`Nombre_servicio` AS `Nombre_servicio_anterior`,`siaev`.`F_registro` AS `Fecha_asignacion_al_proceso`,`siaev`.`Nombre_usuario` AS `Asignado_por`,`siaev`.`F_alerta` AS `F_alerta`,(case when (`siaev`.`F_alerta` is null) then 'NO TIENE ALERTA' when (`siaev`.`F_alerta` < now()) then 'VENCIDO' when (cast(`siaev`.`F_alerta` as date) = curdate()) then 'HOY VENCE' when (`siaev`.`F_alerta` > now()) then 'VIGENTE' end) AS `Fecha_alerta`,`sidse`.`F_solicitud_documento` AS `F_solicitud_documento`,`sidse`.`F_recepcion_documento` AS `F_recepcion_documento`,`siaev`.`F_asignacion_calificacion` AS `Fecha_asignacion_calif`,`siaev`.`Consecutivo_dictamen` AS `Consecutivo_dictamen`,`siacc`.`F_devolucion_comite` AS `Fecha_devolucion_comite`,`siacc`.`F_asignacion_pronu_juntas` AS `F_asignacion_pronu_juntas`,`siaev`.`F_accion` AS `F_accion`,`siacc`.`Modalidad_calificacion` AS `Modalidad_calificacion`,`slp`.`Nombre_parametro` AS `Nombre_Modalidad_calificacion`,`siacc`.`Fuente_informacion` AS `Fuente_informacion`,`siacc`.`F_primera_cita` AS `F_primera_cita`,`siacc`.`Causal_incumplimiento_primera_cita` AS `Causal_incumplimiento_primera_cita`,`siacc`.`F_segunda_cita` AS `F_segunda_cita`,`siacc`.`Causal_incumplimiento_segunda_cita` AS `Causal_incumplimiento_segunda_cita`,`slpara`.`Nombre_parametro` AS `Nombre_Fuente_informacion`,`siacc`.`F_accion` AS `F_accion_realizar`,`siacc`.`Accion` AS `Accion_realizar`,`siaev`.`Notificacion` AS `Enviar_bd_Notificacion`,`siacc`.`F_Alerta` AS `F_Alerta_accion`,`siacc`.`Enviar` AS `Enviar`,`siacc`.`Estado_Facturacion` AS `Estado_Facturacion`,`siacc`.`Causal_devolucion_comite` AS `Causal_devolucion_comite`,`slcd`.`Causal_devolucion` AS `Nombre_Causal_devolucion_comite`,`siacc`.`Descripcion_accion` AS `Descripcion_accion`,`siacc`.`F_cierre` AS `F_cierre`,`sise`.`F_estipula_seguimiento_primer` AS `Fecha_primer_seguimiento`,`sisev`.`F_estipula_seguimiento_segundo` AS `Fecha_segundo_seguimiento`,`siseve`.`F_estipula_seguimiento_Tercer` AS `Fecha_tercera_seguimiento`,`siacc`.`F_asignacion_dto` AS `Fecha_asignacion_dto`,`siacc`.`F_calificacion_servicio` AS `F_calificacion_servicio`,`siae`.`Id_afp` AS `Id_afp`,`siaev`.`F_accion` AS `F_asigna_notifi`,`siaev`.`N_de_orden` AS `N_de_orden`,(select `cncora`.`N_radicado` from `cndatos_comunicados_radicados` `cncora` where ((`cncora`.`ID_evento` = `sie`.`ID_evento`) and (`siaev`.`Id_Asignacion` = `cncora`.`Id_asignacion`)) limit 1) AS `N_radicado_notifi`,'' AS `Asunto_notifi`,'' AS `F_envio_notifi`,(select `cncora`.`Nombre_parametro` from `cndatos_comunicados_radicados` `cncora` where ((`cncora`.`ID_evento` = `sie`.`ID_evento`) and (`siaev`.`Id_Asignacion` = `cncora`.`Id_asignacion`)) limit 1) AS `Estado_general_notifi`,(case when (`co`.`Enfermedad_heredada` is null) then 'No' else 'Si' end) AS `Enfermedad_heredada`,`pa2`.`Nombre_parametro` AS `Parte_controvierte_primera_califi`,concat_ws(', ',`co`.`Contro_origen`,`co`.`Contro_pcl`,`co`.`Contro_diagnostico`,`co`.`Contro_f_estructura`,`co`.`Contro_m_califi`) AS `Tipo_controversia_primera_califi`,`co`.`Termino_contro_califi` AS `Termino_controversia_primera_califi`,`pa3`.`Nombre_entidad` AS `Junta_regional_califi_invalidez`,`co`.`N_dictamen_jrci_emitido` AS `N_dictamen_Jrci`,`co`.`F_radica_dictamen_jrci` AS `F_radicado_entrada_dictamen_Jrci`,`siaev`.`F_asignacion_calificacion` AS `F_asignacion_pronuncia_junta`,`co`.`N_acta_ejecutario_emitida_jrci` AS `N_acta_ejecutoria_emitida_Jrci`,`co`.`N_radicado_recurso_jrci` AS `N_radicado_de_recurso_Jrci`,`co`.`T_propia_apela_recurso_jrci` AS `Termino_controversia_propia_Jrci`,concat_ws(', ',`co`.`Contro_origen_jrci`,`co`.`Contro_pcl_jrci`,`co`.`Contro_diagnostico_jrci`,`co`.`Contro_f_estructura_jrci`,`co`.`Contro_m_califi_jrci`) AS `Parte_controversia_ante_Jrci`,concat_ws(', ',`co`.`Firmeza_intere_contro_jrci`,`co`.`Firmeza_reposicion_jrci`,`co`.`Firmeza_acta_ejecutoria_jrci`,`co`.`Firmeza_apelacion_jnci_jrci`) AS `Tipo_controversia_por_otra_Jrci`,`co`.`F_dictamen_jrci_emitido` AS `F_dictamen_jrci_emitido`,`co`.`F_acta_ejecutoria_emitida_jrci` AS `F_acta_ejecutoria_emitida_jrci`,`co`.`F_notificacion_recurso_jrci` AS `F_notificacion_recurso_jrci`,`co`.`F_noti_ante_jnci` AS `F_noti_ante_jnci`,`co`.`Decision_dictamen_jrci` AS `Decision_dictamen_jrci`,`afi`.`Nombre_parametro` AS `Tipo_afiliado` from (((((((((((((((((((((((`sigmel_informacion_eventos` `sie` left join `sigmel_informacion_afiliado_eventos` `siae` on((`sie`.`ID_evento` = `siae`.`ID_evento`))) left join `sigmel_clientes` `slc` on((`sie`.`Cliente` = `slc`.`Id_cliente`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`sie`.`ID_evento` = `sile`.`ID_evento`))) left join `sigmel_lista_tipo_eventos` `slte` on((`sie`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_informacion_asignacion_eventos` `siaev` on((`sie`.`ID_evento` = `siaev`.`ID_evento`))) left join `sigmel_lista_procesos_servicios` `slps` on((`siaev`.`Id_servicio` = `slps`.`Id_Servicio`))) left join `sigmel_lista_procesos_servicios` `slpspa` on((`siaev`.`Id_servicio_anterior` = `slpspa`.`Id_Servicio`))) left join `sigmel_lista_parametros` `slpar` on((`slpar`.`Id_Parametro` = `siaev`.`Id_Estado_evento`))) left join `sigmel_lista_parametros` `afi` on((`afi`.`Id_Parametro` = `siae`.`Tipo_afiliado`))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `siaev`.`Id_accion`))) left join `sigmel_informacion_accion_eventos` `siacc` on((`siacc`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) left join `sigmel_lista_causal_devoluciones` `slcd` on((`slcd`.`Id_causal_devo` = `siacc`.`Causal_devolucion_comite`))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `siacc`.`Modalidad_calificacion`))) left join `sigmel_lista_parametros` `slpara` on((`slpara`.`Id_Parametro` = `siacc`.`Fuente_informacion`))) left join `sigmel_informacion_controversia_juntas_eventos` `co` on((`co`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) left join `sigmel_lista_parametros` `pa2` on((`pa2`.`Id_Parametro` = `co`.`Parte_controvierte_califi`))) left join `sigmel_informacion_entidades` `pa3` on((`pa3`.`Id_Entidad` = `co`.`Jrci_califi_invalidez`))) left join `sigmel_sys`.`users` `user` on((`user`.`name` = `siaev`.`Nombre_calificador`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `siae`.`Tipo_documento`))) left join (select `sub`.`ID_evento` AS `ID_evento`,`sub`.`Id_Asignacion` AS `Id_Asignacion`,`sub`.`F_solicitud_documento` AS `F_solicitud_documento`,`sub`.`F_recepcion_documento` AS `F_recepcion_documento`,`sub`.`Estado` AS `Estado` from (select `sigmel_informacion_documentos_solicitados_eventos`.`ID_evento` AS `ID_evento`,`sigmel_informacion_documentos_solicitados_eventos`.`Id_Asignacion` AS `Id_Asignacion`,`sigmel_informacion_documentos_solicitados_eventos`.`F_solicitud_documento` AS `F_solicitud_documento`,`sigmel_informacion_documentos_solicitados_eventos`.`F_recepcion_documento` AS `F_recepcion_documento`,`sigmel_informacion_documentos_solicitados_eventos`.`Estado` AS `Estado`,row_number() OVER (PARTITION BY `sigmel_informacion_documentos_solicitados_eventos`.`Id_Asignacion` ORDER BY `sigmel_informacion_documentos_solicitados_eventos`.`ID_evento` )  AS `numero_filas` from `sigmel_informacion_documentos_solicitados_eventos` where (`sigmel_informacion_documentos_solicitados_eventos`.`Estado` = 'Activo')) `sub` where (`sub`.`numero_filas` = 1)) `sidse` on((`sidse`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) left join (select `sigmel_informacion_seguimientos_eventos`.`ID_evento` AS `ID_evento`,`sigmel_informacion_seguimientos_eventos`.`Id_Asignacion` AS `Id_Asignacion`,`sigmel_informacion_seguimientos_eventos`.`F_estipula_seguimiento` AS `F_estipula_seguimiento_primer`,`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` AS `Causal_seguimiento` from `sigmel_informacion_seguimientos_eventos` where (`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` = 'Primer seguimiento')) `sise` on((`sise`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) left join (select `sigmel_informacion_seguimientos_eventos`.`ID_evento` AS `ID_evento`,`sigmel_informacion_seguimientos_eventos`.`Id_Asignacion` AS `Id_Asignacion`,`sigmel_informacion_seguimientos_eventos`.`F_estipula_seguimiento` AS `F_estipula_seguimiento_segundo`,`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` AS `Causal_seguimiento` from `sigmel_informacion_seguimientos_eventos` where (`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` = 'Segundo seguimiento')) `sisev` on((`sisev`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) left join (select `sigmel_informacion_seguimientos_eventos`.`ID_evento` AS `ID_evento`,`sigmel_informacion_seguimientos_eventos`.`Id_Asignacion` AS `Id_Asignacion`,`sigmel_informacion_seguimientos_eventos`.`F_estipula_seguimiento` AS `F_estipula_seguimiento_Tercer`,`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` AS `Causal_seguimiento` from `sigmel_informacion_seguimientos_eventos` where (`sigmel_informacion_seguimientos_eventos`.`Causal_seguimiento` = 'Tercer seguimiento')) `siseve` on((`siseve`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_comunicado_eventos`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_comunicado_eventos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_comunicado_eventos` AS select distinct `sie`.`Id_Eventos` AS `Id_Eventos`,`sie`.`ID_evento` AS `ID_evento`,`siae`.`Apoderado` AS `Apoderado`,`siae`.`Tipo_afiliado` AS `Tipo_afiliado`,`siae`.`Nro_identificacion` AS `Nro_identificacion_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Nombre_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Nombre_afiliado_benefi` else `siae`.`Nombre_afiliado` end) AS `Nombre_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Nro_identificacion_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Nro_identificacion_benefi` else `siae`.`Nro_identificacion` end) AS `Nro_identificacion`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Direccion_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Direccion_benefi` else `siae`.`Direccion` end) AS `Direccion_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Telefono_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Telefono_benefi` else `siae`.`Telefono_contacto` end) AS `Telefono_contacto`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Email_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Email_benefi` else `siae`.`Email` end) AS `Email_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Id_departamento_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Id_departamento_benefi` else `siae`.`Id_departamento` end) AS `Id_departamento_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `sldpa`.`Nombre_departamento` when (`siae`.`Tipo_afiliado` = 27) then `sldpb`.`Nombre_departamento` else `sldp`.`Nombre_departamento` end) AS `Nombre_departamento_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `siae`.`Id_municipio_apoderado` when (`siae`.`Tipo_afiliado` = 27) then `siae`.`Id_municipio_benefi` else `siae`.`Id_municipio` end) AS `Id_municipio_afiliado`,(case when (`siae`.`Apoderado` = 'Si') then `sldma`.`Nombre_municipio` when (`siae`.`Tipo_afiliado` = 27) then `sldmb`.`Nombre_municipio` else `sldm`.`Nombre_municipio` end) AS `Nombre_municipio_afiliado`,`sile`.`Empresa` AS `Nombre_empresa`,`sile`.`Nit_o_cc` AS `Nit_o_cc`,`sile`.`Direccion` AS `Direccion_empresa`,`sile`.`Telefono_empresa` AS `Telefono_empresa`,`sile`.`Email` AS `Email_empresa`,`sile`.`Id_departamento` AS `Id_departamento_empresa`,`sldps`.`Nombre_departamento` AS `Nombre_departamento_empresa`,`sile`.`Id_municipio` AS `Id_municipio_empresa`,`sldms`.`Nombre_municipio` AS `Nombre_municipio_empresa` from ((((((((((`sigmel_informacion_eventos` `sie` left join `sigmel_informacion_afiliado_eventos` `siae` on((`sie`.`ID_evento` = `siae`.`ID_evento`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`sie`.`ID_evento` = `sile`.`ID_evento`))) left join `sigmel_lista_departamentos_municipios` `sldp` on((`sldp`.`Id_departamento` = `siae`.`Id_departamento`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`sldm`.`Id_municipios` = `siae`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldpa` on((`sldpa`.`Id_departamento` = `siae`.`Id_departamento_apoderado`))) left join `sigmel_lista_departamentos_municipios` `sldma` on((`sldma`.`Id_municipios` = `siae`.`Id_municipio_apoderado`))) left join `sigmel_lista_departamentos_municipios` `sldpb` on((`sldpb`.`Id_departamento` = `siae`.`Id_departamento_benefi`))) left join `sigmel_lista_departamentos_municipios` `sldmb` on((`sldmb`.`Id_municipios` = `siae`.`Id_municipio_benefi`))) left join `sigmel_lista_departamentos_municipios` `sldps` on((`sldps`.`Id_departamento` = `sile`.`Id_departamento`))) left join `sigmel_lista_departamentos_municipios` `sldms` on((`sldms`.`Id_municipios` = `sile`.`Id_municipio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_comunicados_radicados`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_comunicados_radicados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_comunicados_radicados` AS with `RadicadoDatos` as (select `sice`.`N_radicado` AS `N_radicado`,`slp`.`Nombre_parametro` AS `Nombre_parametro`,`sice`.`ID_evento` AS `ID_evento`,`asig`.`Id_proceso` AS `Id_proceso`,`asig`.`Id_Asignacion` AS `Id_asignacion` from ((`sigmel_informacion_comunicado_eventos` `sice` join `sigmel_informacion_asignacion_eventos` `asig` on(((`asig`.`ID_evento` = `sice`.`ID_evento`) and (`asig`.`Id_proceso` = `sice`.`Id_proceso`) and (`asig`.`Id_Asignacion` = `sice`.`Id_Asignacion`)))) join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `sice`.`Estado_Notificacion`)))) select `RadicadoDatos`.`N_radicado` AS `N_radicado`,`RadicadoDatos`.`Nombre_parametro` AS `Nombre_parametro`,`RadicadoDatos`.`ID_evento` AS `ID_evento`,`RadicadoDatos`.`Id_proceso` AS `Id_proceso`,`RadicadoDatos`.`Id_asignacion` AS `Id_asignacion` from `RadicadoDatos` group by `RadicadoDatos`.`N_radicado`,`RadicadoDatos`.`Nombre_parametro`,`RadicadoDatos`.`ID_evento`,`RadicadoDatos`.`Id_proceso`,`RadicadoDatos`.`Id_asignacion` order by `RadicadoDatos`.`N_radicado` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_eventos`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_eventos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_eventos` AS select `e`.`Id_Eventos` AS `Id_Eventos`,`e`.`ID_evento` AS `ID_evento`,`ide`.`Nombre_parametro` AS `Tipo_documento`,`a`.`Nro_identificacion` AS `Nro_identificacion`,`a`.`Nombre_afiliado` AS `Nombre_afiliado`,`c`.`Id_cliente` AS `Id_cliente`,`c`.`Nombre_cliente` AS `Nombre_Cliente`,`l`.`Empresa` AS `Empresa`,`t`.`Nombre_evento` AS `Nombre_evento`,coalesce(`p`.`Nueva_F_radicacion`,`p`.`F_radicacion`) AS `F_radicacion`,`p`.`F_registro` AS `F_registro`,`tp`.`Id_proceso` AS `Id_proceso`,`tp`.`Nombre_proceso` AS `Nombre_proceso`,`tp`.`Id_Servicio` AS `Id_Servicio`,`tp`.`Nombre_servicio` AS `Nombre_servicio`,`p`.`Id_Asignacion` AS `Id_Asignacion`,`p`.`Id_Estado_evento` AS `Id_Estado_evento`,`p`.`Visible_Nuevo_Servicio` AS `Visible_Nuevo_Servicio`,`p`.`Visible_Nuevo_Proceso` AS `Visible_Nuevo_Proceso`,`lee`.`Nombre_parametro` AS `Nombre_estado`,`slp_activador`.`Nombre_parametro` AS `Activador`,`e`.`N_Radicado_HC` AS `N_radicado_hc`,'N/A' AS `Resultado`,`sia`.`Accion` AS `Accion`,`p`.`F_accion` AS `F_accion`,'N/A' AS `F_dictamen`,`p`.`Nombre_profesional` AS `Nombre_profesional`,'N/A' AS `Detalle`,`mo`.`Id_motivo_solicitud` AS `Id_motivo_solicitud`,`mot`.`Nombre_solicitud` AS `Nombre_solicitud`,`a`.`Id_dominancia` AS `Id_dominancia`,`do`.`Nombre_dominancia` AS `Nombre_dominancia`,`afi`.`Nombre_parametro` AS `Tipo_afiliado`,(case when (`sicoe`.`F_notificacion` is null) then 'N/A' else `sicoe`.`F_notificacion` end) AS `F_notificacion`,(case when (`sicie`.`Visar` = 'Si') then 'Si' else 'No' end) AS `Visar` from ((((((((((((((((((`sigmel_informacion_eventos` `e` left join `sigmel_informacion_afiliado_eventos` `a` on((`e`.`ID_evento` = `a`.`ID_evento`))) left join `sigmel_clientes` `c` on((`e`.`Cliente` = `c`.`Id_cliente`))) left join `sigmel_informacion_laboral_eventos` `l` on((`e`.`ID_evento` = `l`.`ID_evento`))) left join `sigmel_lista_tipo_eventos` `t` on((`e`.`Tipo_evento` = `t`.`Id_Evento`))) left join `sigmel_informacion_asignacion_eventos` `p` on((`e`.`ID_evento` = `p`.`ID_evento`))) left join `sigmel_lista_procesos_servicios` `tp` on((`p`.`Id_servicio` = `tp`.`Id_Servicio`))) left join `sigmel_lista_parametros` `lee` on((`lee`.`Id_Parametro` = `p`.`Id_Estado_evento`))) left join `sigmel_lista_parametros` `afi` on((`afi`.`Id_Parametro` = `a`.`Tipo_afiliado`))) left join `sigmel_lista_parametros` `ide` on((`ide`.`Id_Parametro` = `a`.`Tipo_documento`))) left join `sigmel_lista_dominancias` `do` on((`do`.`Id_Dominancia` = `a`.`Id_dominancia`))) left join `sigmel_informacion_pericial_eventos` `mo` on((`mo`.`ID_evento` = `e`.`ID_evento`))) left join `sigmel_lista_motivo_solicitudes` `mot` on((`mot`.`Id_Solicitud` = `mo`.`Id_motivo_solicitud`))) left join `sigmel_informacion_dto_atel_eventos` `sidae` on((`sidae`.`Id_Asignacion` = `p`.`Id_Asignacion`))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `sidae`.`Origen`))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `p`.`Id_accion`))) left join (select max(`sigmel_informacion_correspondencia_eventos`.`F_notificacion`) AS `F_notificacion`,`sigmel_informacion_correspondencia_eventos`.`ID_evento` AS `ID_evento`,`sigmel_informacion_correspondencia_eventos`.`Id_Asignacion` AS `Id_Asignacion` from `sigmel_informacion_correspondencia_eventos` group by `sigmel_informacion_correspondencia_eventos`.`ID_evento`,`sigmel_informacion_correspondencia_eventos`.`Id_Asignacion`) `sicoe` on(((`sicoe`.`Id_Asignacion` = `p`.`Id_Asignacion`) and (`sicoe`.`ID_evento` = `p`.`ID_evento`)))) left join `sigmel_informacion_comite_interdisciplinario_eventos` `sicie` on(((`p`.`Id_Asignacion` = `sicie`.`Id_Asignacion`) and (`p`.`ID_evento` = `sicie`.`ID_evento`)))) left join `sigmel_lista_parametros` `slp_activador` on((`e`.`Activador` = `slp_activador`.`Id_Parametro`))) where (`e`.`estado_evento` = 'activo') group by `e`.`Id_Eventos`,`e`.`ID_evento`,`a`.`Tipo_documento`,`a`.`Nro_identificacion`,`a`.`Nombre_afiliado`,`c`.`Id_cliente`,`c`.`Nombre_cliente`,`l`.`Empresa`,`t`.`Nombre_evento`,`F_radicacion`,`p`.`F_registro`,`tp`.`Id_proceso`,`tp`.`Nombre_proceso`,`tp`.`Id_Servicio`,`tp`.`Nombre_servicio`,`p`.`Id_Asignacion`,`p`.`Id_Estado_evento`,`p`.`Visible_Nuevo_Servicio`,`p`.`Visible_Nuevo_Proceso`,`Nombre_estado`,`Resultado`,`sia`.`Accion`,`p`.`F_accion`,`F_dictamen`,`sicoe`.`F_notificacion`,`p`.`Nombre_profesional`,`Detalle`,`mo`.`Id_motivo_solicitud`,`mot`.`Nombre_solicitud`,`a`.`Id_dominancia`,`do`.`Nombre_dominancia`,`a`.`Tipo_afiliado`,`sicie`.`Visar` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_info_comunicado_eventos`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_info_comunicado_eventos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_info_comunicado_eventos` AS select `sice`.`Id_Comunicado` AS `Id_Comunicado`,`sice`.`ID_evento` AS `ID_evento`,`sice`.`Id_Asignacion` AS `Id_Asignacion`,`sice`.`Id_proceso` AS `Id_proceso`,`sice`.`Ciudad` AS `Ciudad`,`sice`.`F_comunicado` AS `F_comunicado`,`sice`.`N_radicado` AS `N_radicado`,`sice`.`Cliente` AS `Cliente`,`sice`.`Nombre_afiliado` AS `Nombre_afiliado`,`sice`.`T_documento` AS `T_documento`,`sice`.`N_identificacion` AS `N_identificacion`,`sice`.`Destinatario` AS `Destinatario`,`sice`.`JRCI_Destinatario` AS `JRCI_Destinatario`,`sice`.`Nombre_destinatario` AS `Nombre_destinatario`,`sice`.`Nit_cc` AS `Nit_cc`,`sice`.`Direccion_destinatario` AS `Direccion_destinatario`,`sice`.`Telefono_destinatario` AS `Telefono_destinatario`,`sice`.`Email_destinatario` AS `Email_destinatario`,`sice`.`Id_departamento` AS `Id_departamento`,`sldp`.`Nombre_departamento` AS `Nombre_departamento`,`sice`.`Id_municipio` AS `Id_municipio`,`sldm`.`Nombre_municipio` AS `Nombre_municipio`,`sice`.`Asunto` AS `Asunto`,`sice`.`Cuerpo_comunicado` AS `Cuerpo_comunicado`,`sice`.`Anexos` AS `Anexos`,`sice`.`Forma_envio` AS `Forma_envio`,`slp`.`Nombre_parametro` AS `Nombre_forma_envio`,`sice`.`Elaboro` AS `Elaboro`,`sice`.`Reviso` AS `Reviso`,`user`.`name` AS `Nombre_lider`,`sice`.`Agregar_copia` AS `Agregar_copia`,`sice`.`JRCI_copia` AS `JRCI_copia`,`sice`.`Firmar_Comunicado` AS `Firmar_Comunicado`,`sice`.`Tipo_descarga` AS `Tipo_descarga`,`sice`.`Modulo_creacion` AS `Modulo_creacion`,`sice`.`Reemplazado` AS `Reemplazado`,`sice`.`Nombre_documento` AS `Nombre_documento`,`sice`.`N_siniestro` AS `N_siniestro`,`sice`.`Estado_Notificacion` AS `Estado_Notificacion`,`sice`.`Nota` AS `Nota`,`sice`.`Correspondencia` AS `Correspondencia`,`sice`.`Otro_destinatario` AS `Otro_destinatario`,`sicoe`.`Estado_correspondencia` AS `Estado_correspondencia`,`sice`.`Id_Destinatarios` AS `Id_Destinatarios`,`sice`.`Nombre_usuario` AS `Nombre_usuario`,`sice`.`F_registro` AS `F_registro` from (((((`sigmel_informacion_comunicado_eventos` `sice` left join `sigmel_lista_departamentos_municipios` `sldp` on((`sldp`.`Id_departamento` = `sice`.`Id_departamento`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`sldm`.`Id_municipios` = `sice`.`Id_municipio`))) left join `sigmel_informacion_correspondencia_eventos` `sicoe` on(((`sicoe`.`ID_evento` = `sice`.`ID_evento`) and (`sicoe`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sicoe`.`Id_comunicado` = `sice`.`Id_Comunicado`)))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `sice`.`Forma_envio`))) left join `sigmel_sys`.`users` `user` on((`user`.`id` = `sice`.`Reviso`))) where (`sice`.`T_documento` <> 'N/A') group by `sice`.`Id_Comunicado`,`sldp`.`Nombre_departamento`,`sicoe`.`Estado_correspondencia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_reportes_notificaciones`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_reportes_notificaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_reportes_notificaciones` AS select row_number() OVER (ORDER BY `sice`.`Id_Correspondencia` )  AS `consecutivo`,`sice`.`Id_Correspondencia` AS `Id_Correspondencia`,`sice`.`ID_evento` AS `ID_evento`,`sice`.`Id_Asignacion` AS `Id_Asignacion`,`sice`.`Id_proceso` AS `Id_proceso`,`sice`.`Id_servicio` AS `Id_servicio`,`sice`.`Id_comunicado` AS `Id_comunicado`,`sico`.`F_comunicado` AS `F_comunicado`,`sice`.`N_radicado` AS `N_radicado`,`sico`.`Agregar_copia` AS `Agregar_copia`,(case when (`sico`.`Nombre_documento` is null) then 'No Descargado' else `sico`.`Nombre_documento` end) AS `Nombre_documento`,(case when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('ARL_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then '1_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then '1_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then 'N/A' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` in ('6','7','8')) and (`sico`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '7') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '8') and (`sico`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('ARL',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` in ('6','7')) and (`sico`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('ARL_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then '7_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then '7_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then 'N/A' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then concat('ARL_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then '2_EMPLEADOR' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('EPS_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('ARL_',`sice`.`Nombre_destinatario`) when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sice`.`Id_servicio` = '1') and (`sico`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_CORREO' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_FISICO' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'eps') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'eps') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'arl') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'arl') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (find_in_set(`sice`.`Tipo_correspondencia`,replace(`sico`.`Agregar_copia`,' ','')) = 0) and (`sice`.`Tipo_destinatario` <> 'Principal') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then 'No Tiene Copia' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (`sico`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` <> 'sin@correo.com') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'Afiliado') and (`sice`.`Email_destinatario` = 'sin@correo.com') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` in ('Empleador','Empresa')) and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'eps') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'arl') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'afp') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'jrci') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'jnci') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Tipo_correspondencia` = 'afp_conocimiento') and (not(regexp_like(`sico`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' else 'N/A' end) AS `Carpeta_impresion`,`sico`.`Nota` AS `Observaciones`,`sice`.`N_identificacion` AS `N_identificacion`,`sice`.`Tipo_correspondencia` AS `Tipo_correspondencia`,(case when (`sice`.`Tipo_correspondencia` = 'eps') then 'EPS' when (`sice`.`Tipo_correspondencia` = 'afp') then 'AFP' when (`sice`.`Tipo_correspondencia` = 'arl') then 'ARL' when (`sice`.`Tipo_correspondencia` = 'jrci') then 'JRCI' when (`sice`.`Tipo_correspondencia` = 'jnci') then 'JNCI' when (`sice`.`Tipo_correspondencia` = 'afp_conocimiento') then 'AFP_CONOCIMIENTO' else `sice`.`Tipo_correspondencia` end) AS `Destinatario`,`sice`.`Nombre_destinatario` AS `Nombre_destinatario`,`sice`.`Direccion_destinatario` AS `Direccion_destinatario`,`sice`.`Telefono_destinatario` AS `Telefono_destinatario`,`sice`.`Ciudad` AS `Ciudad`,`sice`.`Departamento` AS `Departamento`,`sice`.`Email_destinatario` AS `Email_destinatario`,`slps`.`Nombre_proceso` AS `Proceso`,`slps`.`Nombre_servicio` AS `Servicio`,`siav`.`Id_accion` AS `Id_accion`,`sia`.`Accion` AS `Accion`,`siav`.`Id_Estado_evento` AS `Id_Estado_evento`,`slpa`.`Nombre_parametro` AS `Estado`,`sice`.`N_orden` AS `N_orden`,`sice`.`Tipo_destinatario` AS `Tipo_destinatario`,`sice`.`N_guia` AS `N_guia`,`sice`.`Folios` AS `Folios`,`sice`.`F_envio` AS `F_envio`,`sice`.`F_notificacion` AS `F_notificacion`,`sice`.`Id_Estado_corresp` AS `Id_Estado_corresp`,`slpar`.`Nombre_parametro` AS `Estado_correspondencia`,`sico`.`Estado_Notificacion` AS `Estado_Notificacion` from ((((((`sigmel_informacion_correspondencia_eventos` `sice` left join `sigmel_informacion_comunicado_eventos` `sico` on(((`sico`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sico`.`N_radicado` = `sice`.`N_radicado`)))) left join `sigmel_informacion_asignacion_eventos` `siav` on((`siav`.`Id_Asignacion` = `sice`.`Id_Asignacion`))) left join `sigmel_lista_procesos_servicios` `slps` on(((`slps`.`Id_proceso` = `sice`.`Id_proceso`) and (`slps`.`Id_Servicio` = `sice`.`Id_servicio`)))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `siav`.`Id_accion`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `siav`.`Id_Estado_evento`))) left join `sigmel_lista_parametros` `slpar` on((`slpar`.`Id_Parametro` = `sice`.`Id_Estado_corresp`))) where (`sico`.`Estado_Notificacion` <> '355') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cndatos_reportes_notificaciones_manuales`
--

/*!50001 DROP VIEW IF EXISTS `cndatos_reportes_notificaciones_manuales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cndatos_reportes_notificaciones_manuales` AS select row_number() OVER (ORDER BY `sicoe`.`Id_Comunicado` )  AS `consecutivo`,'' AS `Id_Correspondencia`,`sicoe`.`ID_evento` AS `ID_evento`,`sicoe`.`Id_Asignacion` AS `Id_Asignacion`,`sicoe`.`Id_proceso` AS `Id_proceso`,`siae`.`Id_servicio` AS `Id_servicio`,`sicoe`.`Id_Comunicado` AS `Id_comunicado`,`sicoe`.`F_comunicado` AS `F_comunicado`,`sicoe`.`N_radicado` AS `N_radicado`,`sicoe`.`Agregar_copia` AS `Agregar_copia`,(case when (`sicoe`.`Nombre_documento` is null) then 'No Descargado' else `sicoe`.`Nombre_documento` end) AS `Nombre_documento`,(case when ((`sicoe`.`Nombre_documento` is not null) and `sicoe`.`Id_Comunicado` not in (select `sigmel_informacion_correspondencia_eventos`.`Id_comunicado` from `sigmel_informacion_correspondencia_eventos`) and (not(regexp_like(`sicoe`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' else 'N/A' end) AS `Carpeta_impresion`,`sicoe`.`Nota` AS `Observaciones`,`siafe`.`Nro_identificacion` AS `N_identificacion`,'' AS `Tipo_correspondencia`,'' AS `Destinatario`,'' AS `Nombre_destinatario`,'' AS `Direccion_destinatario`,'' AS `Telefono_destinatario`,'' AS `Ciudad`,'' AS `Departamento`,'' AS `Email_destinatario`,`slps`.`Nombre_proceso` AS `Proceso`,`slps`.`Nombre_servicio` AS `Servicio`,`siae`.`Id_accion` AS `Id_accion`,`sia`.`Accion` AS `Accion`,`siae`.`Id_Estado_evento` AS `Id_Estado_evento`,`slpa`.`Nombre_parametro` AS `Estado`,`siae`.`N_de_orden` AS `N_orden`,'' AS `Tipo_destinatario`,'' AS `N_guia`,'' AS `Folios`,'' AS `F_envio`,'' AS `F_notificacion`,'' AS `Id_Estado_corresp`,'' AS `Estado_correspondencia`,`sicoe`.`Estado_Notificacion` AS `Estado_Notificacion` from (((((`sigmel_informacion_comunicado_eventos` `sicoe` left join `sigmel_informacion_asignacion_eventos` `siae` on((`siae`.`Id_Asignacion` = `sicoe`.`Id_Asignacion`))) left join `sigmel_informacion_afiliado_eventos` `siafe` on((`siafe`.`ID_evento` = `sicoe`.`ID_evento`))) left join `sigmel_lista_procesos_servicios` `slps` on(((`slps`.`Id_proceso` = `sicoe`.`Id_proceso`) and (`slps`.`Id_Servicio` = `siae`.`Id_servicio`)))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `siae`.`Id_accion`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `siae`.`Id_Estado_evento`))) where (`sicoe`.`Estado_Notificacion` <> '355') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_noti_con_sin_IdDestinatarios`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_noti_con_sin_IdDestinatarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_noti_con_sin_IdDestinatarios` AS select `crnu`.`Id_Comunicado` AS `Id_Comunicado`,`crnu`.`ID_evento` AS `ID_evento`,`crnu`.`Id_Asignacion` AS `Id_Asignacion`,`crnu`.`Id_proceso` AS `Id_proceso`,`crnu`.`Id_servicio` AS `Id_servicio`,`crnu`.`F_comunicado` AS `F_comunicado`,`crnu`.`N_radicado` AS `N_radicado`,`crnu`.`Nombre_documento` AS `Nombre_documento`,`crnu`.`Carpeta_impresion` AS `Carpeta_impresion`,`crnu`.`Observaciones` AS `Observaciones`,`crnu`.`N_identificacion` AS `N_identificacion`,`crnu`.`Destinatario` AS `Destinatario`,`crnu`.`Tipo_descarga` AS `Tipo_descarga`,`crnu`.`Otro_destinatario` AS `Otro_destinatario`,`crnu`.`Tipo_destinatario` AS `Tipo_destinatario`,`crnu`.`Nombre_destinatario` AS `Nombre_destinatario`,`crnu`.`Direccion_destinatario` AS `Direccion_destinatario`,`crnu`.`Telefono_destinatario` AS `Telefono_destinatario`,`crnu`.`Ciudad_departamento` AS `Ciudad_departamento`,`crnu`.`Email_destinatario` AS `Email_destinatario`,`crnu`.`Proceso_servicio` AS `Proceso_servicio`,`crnu`.`Ultima_accion` AS `Ultima_accion`,`crnu`.`Estado` AS `Estado`,`crnu`.`N_de_orden` AS `N_de_orden`,`crnu`.`Id_destinatario` AS `Id_destinatario`,`crnu`.`Tipo_correspondencia` AS `Tipo_correspondencia`,(case when (`sicoev`.`Tipo_correspondencia` = `crnu`.`Tipo_destinatario`) then `sicoev`.`N_guia` else `crnu`.`N_guia` end) AS `N_guia`,`crnu`.`Folios` AS `Folios`,`crnu`.`F_envio` AS `F_envio`,`crnu`.`F_notificacion` AS `F_notificacion`,`crnu`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crnu`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (`cnvista_reportes_notificaciones_uniones` `crnu` left join `sigmel_informacion_correspondencia_eventos` `sicoev` on((`sicoev`.`Tipo_correspondencia` = `crnu`.`Tipo_destinatario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones` AS select `sice`.`Id_Comunicado` AS `Id_Comunicado`,`sice`.`ID_evento` AS `ID_evento`,`sice`.`Id_Asignacion` AS `Id_Asignacion`,`sice`.`Id_proceso` AS `Id_proceso`,`siae`.`Id_servicio` AS `Id_servicio`,`sice`.`F_comunicado` AS `F_comunicado`,`sice`.`N_radicado` AS `N_radicado`,`sice`.`Nombre_documento` AS `Nombre_documento`,`sice`.`Nota` AS `Observaciones`,`sice`.`N_identificacion` AS `N_identificacion`,`sice`.`Destinatario` AS `Destinatario`,`sice`.`Tipo_descarga` AS `Tipo_descarga`,`sice`.`Otro_destinatario` AS `Otro_destinatario`,`sice`.`Destinatario` AS `Tipo_destinatario`,concat(`slps`.`Nombre_proceso`,' - ',`slps`.`Nombre_servicio`) AS `Proceso_servicio`,`siac`.`Accion` AS `Ultima_accion`,`slpa`.`Nombre_parametro` AS `Estado`,`siae`.`N_de_orden` AS `N_de_orden`,`siae`.`Notificacion` AS `Bandeja_notificaciones` from ((((`sigmel_informacion_comunicado_eventos` `sice` left join `sigmel_informacion_asignacion_eventos` `siae` on((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`))) left join `sigmel_lista_procesos_servicios` `slps` on((`slps`.`Id_Servicio` = `siae`.`Id_servicio`))) left join `sigmel_informacion_acciones` `siac` on((`siac`.`Id_Accion` = `siae`.`Id_accion`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `siae`.`Id_Estado_evento`))) where (`sice`.`Estado_Notificacion` <> '355') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_copias`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_copias` AS select distinct `crn`.`Id_Comunicado` AS `Id_Comunicado`,`crn`.`ID_evento` AS `ID_evento`,`crn`.`Id_Asignacion` AS `Id_Asignacion`,`crn`.`Id_proceso` AS `Id_proceso`,`crn`.`Id_servicio` AS `Id_servicio`,`crn`.`F_comunicado` AS `F_comunicado`,`crn`.`N_radicado` AS `N_radicado`,`crn`.`Nombre_documento` AS `Nombre_documento`,`crn`.`Observaciones` AS `Observaciones`,`crn`.`N_identificacion` AS `N_identificacion`,`crn`.`Destinatario` AS `Destinatario`,`crn`.`Tipo_descarga` AS `Tipo_descarga`,`crn`.`Otro_destinatario` AS `Otro_destinatario`,(case when (`sicev`.`Agregar_copia` = '') then NULL else trim(substring_index(substring_index(`sicev`.`Agregar_copia`,',',`numbers`.`n`),',',-(1))) end) AS `Tipo_destinatario`,`crn`.`Proceso_servicio` AS `Proceso_servicio`,`crn`.`Ultima_accion` AS `Ultima_accion`,`crn`.`Estado` AS `Estado`,`crn`.`N_de_orden` AS `N_de_orden`,'Copia' AS `Tipo_correspondencia`,`crn`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (((select 1 AS `n` union all select 2 AS `2` union all select 3 AS `3` union all select 4 AS `4` union all select 5 AS `5` union all select 6 AS `6` union all select 7 AS `7` union all select 8 AS `8`) `numbers` left join `sigmel_informacion_comunicado_eventos` `sicev` on(((char_length(ifnull(`sicev`.`Agregar_copia`,'')) - char_length(replace(ifnull(`sicev`.`Agregar_copia`,''),',',''))) >= (`numbers`.`n` - 1)))) left join `cnvista_reportes_notificaciones` `crn` on(((`crn`.`N_radicado` = `sicev`.`N_radicado`) and (`crn`.`Id_Comunicado` = `sicev`.`Id_Comunicado`)))) where ((`crn`.`Id_Comunicado` is not null) and (`crn`.`Destinatario` <> 'N/A')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_copias_dos`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias_dos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_copias_dos` AS select distinct `crn2`.`Id_Comunicado` AS `Id_Comunicado`,`crn2`.`ID_evento` AS `ID_evento`,`crn2`.`Id_Asignacion` AS `Id_Asignacion`,`crn2`.`Id_proceso` AS `Id_proceso`,`crn2`.`Id_servicio` AS `Id_servicio`,`crn2`.`F_comunicado` AS `F_comunicado`,`crn2`.`N_radicado` AS `N_radicado`,`crn2`.`Nombre_documento` AS `Nombre_documento`,(case when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'N/A' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then '7_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then '7_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'N/A' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'eps') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'arl') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'afp') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' else 'N/A' end) AS `Carpeta_impresion`,`crn2`.`Observaciones` AS `Observaciones`,`crn2`.`N_identificacion` AS `N_identificacion`,`crn2`.`Destinatario` AS `Destinatario`,`crn2`.`Tipo_descarga` AS `Tipo_descarga`,`crn2`.`Otro_destinatario` AS `Otro_destinatario`,`crn2`.`Tipo_destinatario` AS `Tipo_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Nombre_afiliado` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Empresa` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Nombre_afiliado` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Empresa` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Nombre_entidad` end) AS `Nombre_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Direccion` end) AS `Direccion_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then convert(`siaf`.`Telefono_contacto` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then convert(`sile`.`Telefono_empresa` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then convert(`siaf`.`Telefono_contacto` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then convert(`sile`.`Telefono_empresa` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Telefonos` end) AS `Telefono_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then concat(`sldmu`.`Nombre_municipio`,' - ',`sldmu`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then concat(`sldmun`.`Nombre_municipio`,' - ',`sldmun`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then concat(`sldmuni`.`Nombre_municipio`,' - ',`sldmuni`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then concat(`sldmunici`.`Nombre_municipio`,' - ',`sldmunici`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then concat(`sldmunicip`.`Nombre_municipio`,' - ',`sldmunicip`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then concat(`sldmunicipi`.`Nombre_municipio`,' - ',`sldmunicipi`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmu`.`Nombre_municipio`,' - ',`sldmu`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmun`.`Nombre_municipio`,' - ',`sldmun`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmuni`.`Nombre_municipio`,' - ',`sldmuni`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunici`.`Nombre_municipio`,' - ',`sldmunici`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunicip`.`Nombre_municipio`,' - ',`sldmunicip`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunicipi`.`Nombre_municipio`,' - ',`sldmunicipi`.`Nombre_departamento`) end) AS `Ciudad_departamento`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Email` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Email` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Email` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Email` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Emails` end) AS `Email_destinatario`,`crn2`.`Proceso_servicio` AS `Proceso_servicio`,`crn2`.`Ultima_accion` AS `Ultima_accion`,`crn2`.`Estado` AS `Estado`,`crn2`.`N_de_orden` AS `N_de_orden`,(case when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`sicev`.`Id_Destinatarios` like '%AFI_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('AFI_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Empleador') and (`sicev`.`Id_Destinatarios` like '%EMP_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('EMP_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Eps') and (`sicev`.`Id_Destinatarios` like '%EPS_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('EPS_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Afp') and (`sicev`.`Id_Destinatarios` like '%AFP_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('AFP_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Arl') and (`sicev`.`Id_Destinatarios` like '%ARL_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('ARL_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`sicev`.`Id_Destinatarios` like '%JRC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('JRC_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`sicev`.`Id_Destinatarios` like '%JNC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('JNC_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`sicev`.`Id_Destinatarios` like '%FPC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('FPC_',`sicev`.`Id_Destinatarios`)),',',1) end) AS `Id_destinatario`,`crn2`.`Tipo_correspondencia` AS `Tipo_correspondencia`,`sicev`.`Estado_Notificacion` AS `Estado_general_notificacion`,`crn2`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from ((((((((((((((((((((`cnvista_reportes_notificaciones_copias` `crn2` left join `sigmel_informacion_afiliado_eventos` `siaf` on((`siaf`.`ID_evento` = `crn2`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien` on((`sien`.`Id_Entidad` = `siaf`.`Id_eps`))) left join `sigmel_informacion_entidades` `sient` on((`sient`.`Id_Entidad` = `siaf`.`Id_arl`))) left join `sigmel_informacion_entidades` `sienti` on((`sienti`.`Id_Entidad` = `siaf`.`Id_afp`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`sile`.`ID_evento` = `crn2`.`ID_evento`))) left join `sigmel_informacion_controversia_juntas_eventos` `sicje` on((`sicje`.`Id_Asignacion` = `crn2`.`Id_Asignacion`))) left join `sigmel_informacion_entidades` `sientid` on((`sientid`.`Id_Entidad` = `sicje`.`Jrci_califi_invalidez`))) left join `sigmel_informacion_entidades` `sientida` on((`sientida`.`IdTipo_entidad` = 5))) left join `sigmel_informacion_entidades` `sientidad` on((`sientidad`.`Id_Entidad` = `siaf`.`Id_afp_entidad_conocimiento`))) left join `sigmel_informacion_comunicado_eventos` `sicev` on((`sicev`.`Id_Comunicado` = `crn2`.`Id_Comunicado`))) left join `sigmel_informacion_entidades` `sientidade` on((`sientidade`.`Id_Entidad` = `sicev`.`Nombre_destinatario`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`sldm`.`Id_municipios` = `siaf`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmu` on((`sldmu`.`Id_municipios` = `sile`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmun` on((`sldmun`.`Id_municipios` = `sien`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmuni` on((`sldmuni`.`Id_municipios` = `sient`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunic` on((`sldmunic`.`Id_municipios` = `sienti`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunici` on((`sldmunici`.`Id_municipios` = `sientid`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicip` on((`sldmunicip`.`Id_municipios` = `sientida`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicipi` on((`sldmunicipi`.`Id_municipios` = `sientidad`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicipio` on((`sldmunicipio`.`Id_municipios` = `sientidade`.`Id_Ciudad`))) where (`crn2`.`Tipo_destinatario` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_copias_tres`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_copias_tres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_copias_tres` AS select `crnc3`.`Id_Comunicado` AS `Id_Comunicado`,`crnc3`.`ID_evento` AS `ID_evento`,`crnc3`.`Id_Asignacion` AS `Id_Asignacion`,`crnc3`.`Id_proceso` AS `Id_proceso`,`crnc3`.`Id_servicio` AS `Id_servicio`,`crnc3`.`F_comunicado` AS `F_comunicado`,`crnc3`.`N_radicado` AS `N_radicado`,`crnc3`.`Nombre_documento` AS `Nombre_documento`,`crnc3`.`Carpeta_impresion` AS `Carpeta_impresion`,`crnc3`.`Observaciones` AS `Observaciones`,`crnc3`.`N_identificacion` AS `N_identificacion`,`crnc3`.`Destinatario` AS `Destinatario`,`crnc3`.`Tipo_descarga` AS `Tipo_descarga`,`crnc3`.`Otro_destinatario` AS `Otro_destinatario`,`crnc3`.`Tipo_destinatario` AS `Tipo_destinatario`,`crnc3`.`Nombre_destinatario` AS `Nombre_destinatario`,`crnc3`.`Direccion_destinatario` AS `Direccion_destinatario`,`crnc3`.`Telefono_destinatario` AS `Telefono_destinatario`,`crnc3`.`Ciudad_departamento` AS `Ciudad_departamento`,`crnc3`.`Email_destinatario` AS `Email_destinatario`,`crnc3`.`Proceso_servicio` AS `Proceso_servicio`,`crnc3`.`Ultima_accion` AS `Ultima_accion`,`crnc3`.`Estado` AS `Estado`,`crnc3`.`N_de_orden` AS `N_de_orden`,`crnc3`.`Id_destinatario` AS `Id_destinatario`,convert(`crnc3`.`Tipo_correspondencia` using utf8mb3) AS `Tipo_correspondencia`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`N_guia` end) AS `N_guia`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`Folios` end) AS `Folios`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_envio` end) AS `F_envio`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_notificacion` end) AS `F_notificacion`,`crnc3`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crnc3`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (`cnvista_reportes_notificaciones_copias_dos` `crnc3` left join `sigmel_informacion_correspondencia_eventos` `sicoev` on((trim(`sicoev`.`Id_destinatario`) = trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1)))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_correspondencias`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_correspondencias` AS select distinct `crn`.`Id_Comunicado` AS `Id_Comunicado`,`crn`.`ID_evento` AS `ID_evento`,`crn`.`Id_Asignacion` AS `Id_Asignacion`,`crn`.`Id_proceso` AS `Id_proceso`,`crn`.`Id_servicio` AS `Id_servicio`,`crn`.`F_comunicado` AS `F_comunicado`,`crn`.`N_radicado` AS `N_radicado`,`crn`.`Nombre_documento` AS `Nombre_documento`,`crn`.`Observaciones` AS `Observaciones`,`crn`.`N_identificacion` AS `N_identificacion`,`crn`.`Destinatario` AS `Destinatario`,`crn`.`Tipo_descarga` AS `Tipo_descarga`,`crn`.`Otro_destinatario` AS `Otro_destinatario`,(case when (`sicev`.`Correspondencia` is null) then NULL else trim(substring_index(substring_index(`sicev`.`Correspondencia`,',',`numbers`.`n`),',',-(1))) end) AS `Tipo_destinatario`,`crn`.`Proceso_servicio` AS `Proceso_servicio`,`crn`.`Ultima_accion` AS `Ultima_accion`,`crn`.`Estado` AS `Estado`,`crn`.`N_de_orden` AS `N_de_orden`,'Copia' AS `Tipo_correspondencia`,`crn`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (((select 1 AS `n` union all select 2 AS `2` union all select 3 AS `3` union all select 4 AS `4` union all select 5 AS `5` union all select 6 AS `6` union all select 7 AS `7` union all select 8 AS `8`) `numbers` left join `sigmel_informacion_comunicado_eventos` `sicev` on(((char_length(ifnull(`sicev`.`Correspondencia`,'')) - char_length(replace(ifnull(`sicev`.`Correspondencia`,''),',',''))) >= (`numbers`.`n` - 1)))) left join `cnvista_reportes_notificaciones` `crn` on(((`crn`.`N_radicado` = `sicev`.`N_radicado`) and (`crn`.`Id_Comunicado` = `sicev`.`Id_Comunicado`)))) where (`crn`.`Id_Comunicado` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_correspondencias_dos`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias_dos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_correspondencias_dos` AS select distinct `crn2`.`Id_Comunicado` AS `Id_Comunicado`,`crn2`.`ID_evento` AS `ID_evento`,`crn2`.`Id_Asignacion` AS `Id_Asignacion`,`crn2`.`Id_proceso` AS `Id_proceso`,`crn2`.`Id_servicio` AS `Id_servicio`,`crn2`.`F_comunicado` AS `F_comunicado`,`crn2`.`N_radicado` AS `N_radicado`,`crn2`.`Nombre_documento` AS `Nombre_documento`,(case when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'N/A' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7','8')) and (`crn2`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '7') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '8') and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` in ('6','7')) and (`crn2`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then '7_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then '7_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'N/A' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then '2_EMPLEADOR' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('ARL_',`sient`.`Nombre_entidad`) when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Id_servicio` = '1') and (`crn2`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_CORREO' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_FISICO' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'eps') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'arl') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (`crn2`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` in ('Empleador','Empresa')) and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'eps') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'arl') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'afp') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'jrci') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'jnci') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'afp_conocimiento') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`crn2`.`Tipo_destinatario` = 'N/A') and (not(regexp_like(`crn2`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' else 'N/A' end) AS `Carpeta_impresion`,`crn2`.`Observaciones` AS `Observaciones`,`crn2`.`N_identificacion` AS `N_identificacion`,`crn2`.`Destinatario` AS `Destinatario`,`crn2`.`Tipo_descarga` AS `Tipo_descarga`,`crn2`.`Otro_destinatario` AS `Otro_destinatario`,`crn2`.`Tipo_destinatario` AS `Tipo_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Nombre_afiliado` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Empresa` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Nombre_afiliado` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Empresa` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Nombre_entidad` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Nombre_entidad` end) AS `Nombre_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Direccion` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Direccion` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Direccion` end) AS `Direccion_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then convert(`siaf`.`Telefono_contacto` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then convert(`sile`.`Telefono_empresa` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then convert(`siaf`.`Telefono_contacto` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then convert(`sile`.`Telefono_empresa` using utf8mb4) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Telefonos` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Telefonos` end) AS `Telefono_destinatario`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then concat(`sldmu`.`Nombre_municipio`,' - ',`sldmu`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then concat(`sldmun`.`Nombre_municipio`,' - ',`sldmun`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then concat(`sldmuni`.`Nombre_municipio`,' - ',`sldmuni`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then concat(`sldmunici`.`Nombre_municipio`,' - ',`sldmunici`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then concat(`sldmunicip`.`Nombre_municipio`,' - ',`sldmunicip`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then concat(`sldmunicipi`.`Nombre_municipio`,' - ',`sldmunicipi`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then concat(`sldmunicipio`.`Nombre_municipio`,' - ',`sldmunicipio`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmu`.`Nombre_municipio`,' - ',`sldmu`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmun`.`Nombre_municipio`,' - ',`sldmun`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmuni`.`Nombre_municipio`,' - ',`sldmuni`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunici`.`Nombre_municipio`,' - ',`sldmunici`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunicip`.`Nombre_municipio`,' - ',`sldmunicip`.`Nombre_departamento`) when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then concat(`sldmunicipi`.`Nombre_municipio`,' - ',`sldmunicipi`.`Nombre_departamento`) end) AS `Ciudad_departamento`,(case when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario'))) then `siaf`.`Email` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Empleador')) then `sile`.`Email` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Eps')) then `sien`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp')) then `sienti`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Arl')) then `sient`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jrci')) then `sientid`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'jnci')) then `sientida`.`Emails` when ((`crn2`.`Otro_destinatario` = 0) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento')) then `sientidad`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` = `crn2`.`Destinatario`)) then `sientidade`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `siaf`.`Email` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Empleador') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sile`.`Email` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Eps') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sien`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sienti`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Arl') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sient`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jrci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientid`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'jnci') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientida`.`Emails` when ((`crn2`.`Otro_destinatario` = 1) and (`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`crn2`.`Tipo_destinatario` <> `crn2`.`Destinatario`)) then `sientidad`.`Emails` end) AS `Email_destinatario`,`crn2`.`Proceso_servicio` AS `Proceso_servicio`,`crn2`.`Ultima_accion` AS `Ultima_accion`,`crn2`.`Estado` AS `Estado`,`crn2`.`N_de_orden` AS `N_de_orden`,(case when ((`crn2`.`Tipo_destinatario` in ('Afiliado','Beneficiario')) and (`sicev`.`Id_Destinatarios` like '%AFI_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('AFI_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Empleador') and (`sicev`.`Id_Destinatarios` like '%EMP_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('EMP_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Eps') and (`sicev`.`Id_Destinatarios` like '%EPS_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('EPS_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Afp') and (`sicev`.`Id_Destinatarios` like '%AFP_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('AFP_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Arl') and (`sicev`.`Id_Destinatarios` like '%ARL_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('ARL_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'jrci') and (`sicev`.`Id_Destinatarios` like '%JRC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('JRC_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'jnci') and (`sicev`.`Id_Destinatarios` like '%JNC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('JNC_',`sicev`.`Id_Destinatarios`)),',',1) when ((`crn2`.`Tipo_destinatario` = 'Afp_conocimiento') and (`sicev`.`Id_Destinatarios` like '%FPC_%')) then substring_index(substr(`sicev`.`Id_Destinatarios`,locate('FPC_',`sicev`.`Id_Destinatarios`)),',',1) end) AS `Id_destinatario`,`crn2`.`Tipo_correspondencia` AS `Tipo_correspondencia`,`sicev`.`Estado_Notificacion` AS `Estado_general_notificacion`,`crn2`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from ((((((((((((((((((((`cnvista_reportes_notificaciones_correspondencias` `crn2` left join `sigmel_informacion_afiliado_eventos` `siaf` on((`siaf`.`ID_evento` = `crn2`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien` on((`sien`.`Id_Entidad` = `siaf`.`Id_eps`))) left join `sigmel_informacion_entidades` `sient` on((`sient`.`Id_Entidad` = `siaf`.`Id_arl`))) left join `sigmel_informacion_entidades` `sienti` on((`sienti`.`Id_Entidad` = `siaf`.`Id_afp`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`sile`.`ID_evento` = `crn2`.`ID_evento`))) left join `sigmel_informacion_controversia_juntas_eventos` `sicje` on((`sicje`.`Id_Asignacion` = `crn2`.`Id_Asignacion`))) left join `sigmel_informacion_entidades` `sientid` on((`sientid`.`Id_Entidad` = `sicje`.`Jrci_califi_invalidez`))) left join `sigmel_informacion_entidades` `sientida` on((`sientida`.`IdTipo_entidad` = 5))) left join `sigmel_informacion_entidades` `sientidad` on((`sientidad`.`Id_Entidad` = `siaf`.`Id_afp_entidad_conocimiento`))) left join `sigmel_informacion_comunicado_eventos` `sicev` on((`sicev`.`Id_Comunicado` = `crn2`.`Id_Comunicado`))) left join `sigmel_informacion_entidades` `sientidade` on((`sientidade`.`Id_Entidad` = `sicev`.`Nombre_destinatario`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`sldm`.`Id_municipios` = `siaf`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmu` on((`sldmu`.`Id_municipios` = `sile`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmun` on((`sldmun`.`Id_municipios` = `sien`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmuni` on((`sldmuni`.`Id_municipios` = `sient`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunic` on((`sldmunic`.`Id_municipios` = `sienti`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunici` on((`sldmunici`.`Id_municipios` = `sientid`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicip` on((`sldmunicip`.`Id_municipios` = `sientida`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicipi` on((`sldmunicipi`.`Id_municipios` = `sientidad`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicipio` on((`sldmunicipio`.`Id_municipios` = `sientidade`.`Id_Ciudad`))) where (`crn2`.`Tipo_destinatario` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_correspondencias_tres`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_correspondencias_tres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_correspondencias_tres` AS select `crnc3`.`Id_Comunicado` AS `Id_Comunicado`,`crnc3`.`ID_evento` AS `ID_evento`,`crnc3`.`Id_Asignacion` AS `Id_Asignacion`,`crnc3`.`Id_proceso` AS `Id_proceso`,`crnc3`.`Id_servicio` AS `Id_servicio`,`crnc3`.`F_comunicado` AS `F_comunicado`,`crnc3`.`N_radicado` AS `N_radicado`,`crnc3`.`Nombre_documento` AS `Nombre_documento`,`crnc3`.`Carpeta_impresion` AS `Carpeta_impresion`,`crnc3`.`Observaciones` AS `Observaciones`,`crnc3`.`N_identificacion` AS `N_identificacion`,`crnc3`.`Destinatario` AS `Destinatario`,`crnc3`.`Tipo_descarga` AS `Tipo_descarga`,`crnc3`.`Otro_destinatario` AS `Otro_destinatario`,`crnc3`.`Tipo_destinatario` AS `Tipo_destinatario`,`crnc3`.`Nombre_destinatario` AS `Nombre_destinatario`,`crnc3`.`Direccion_destinatario` AS `Direccion_destinatario`,`crnc3`.`Telefono_destinatario` AS `Telefono_destinatario`,`crnc3`.`Ciudad_departamento` AS `Ciudad_departamento`,`crnc3`.`Email_destinatario` AS `Email_destinatario`,`crnc3`.`Proceso_servicio` AS `Proceso_servicio`,`crnc3`.`Ultima_accion` AS `Ultima_accion`,`crnc3`.`Estado` AS `Estado`,`crnc3`.`N_de_orden` AS `N_de_orden`,`crnc3`.`Id_destinatario` AS `Id_destinatario`,(case when (`crnc3`.`Tipo_descarga` <> `sicoev`.`Tipo_destinatario`) then `sicoev`.`Tipo_destinatario` else 'Copia' end) AS `Tipo_correspondencia`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`N_guia` end) AS `N_guia`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`Folios` end) AS `Folios`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_envio` end) AS `F_envio`,(case when (trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_notificacion` end) AS `F_notificacion`,`crnc3`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crnc3`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (`cnvista_reportes_notificaciones_correspondencias_dos` `crnc3` left join `sigmel_informacion_correspondencia_eventos` `sicoev` on((trim(`sicoev`.`Id_destinatario`) = trim(substring_index(`crnc3`.`Id_destinatario`,'_',-(1)))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_principales`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_principales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_principales` AS select distinct `sice`.`Id_Comunicado` AS `Id_Comunicado`,`sice`.`ID_evento` AS `ID_evento`,`sice`.`Id_Asignacion` AS `Id_Asignacion`,`sice`.`Id_proceso` AS `Id_proceso`,`siae`.`Id_servicio` AS `Id_servicio`,`sice`.`F_comunicado` AS `F_comunicado`,`sice`.`N_radicado` AS `N_radicado`,`sice`.`Nombre_documento` AS `Nombre_documento`,(case when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '5_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then '1_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then '1_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then 'N/A' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` in ('6','7','8')) and (`sice`.`Nombre_documento` like '%PCL_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '1_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_INC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '1_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '7') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '9_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FB_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '9_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '9_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FD_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '9_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_FE_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '9_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '8') and (`sice`.`Nombre_documento` like '%PCL_OFICIO_REV_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then '1_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` in ('6','7')) and (`sice`.`Nombre_documento` like '%PCL_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%PCL_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '8_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%PCL_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '5_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_SOL_DOC_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then '7_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then '7_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then 'N/A' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_DML_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then '7_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then '2_EMPLEADOR' when ((`sice`.`Destinatario` = 'eps') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('EPS_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'arl') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then concat('ARL_',`sien`.`Nombre_entidad`) when ((`sice`.`Destinatario` = 'afp') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`siae`.`Id_servicio` = '1') and (`sice`.`Nombre_documento` like '%ORI_OFICIO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '8_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%ORI_DESACUERDO_%')) then '3_PRONUNCIAMIENTOS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%ORI_ACUERDO_%')) then 'AFP_PORVENIR S.A.' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_DESACUERDO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_ACUERDO_%')) then '4_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_OFICIOA_AFILIADO_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_OFICIO_JRCI_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_REM_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_DEV_EXPEDIENTE_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_CORREO' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_FISICO' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'eps') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'arl') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (`sice`.`Nombre_documento` like '%JUN_SOL_DICTAMEN_%')) then '6_JUNTAS' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` in ('Empleador','Empresa')) and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'eps') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'arl') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'afp') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'jrci') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'jnci') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'afp_conocimiento') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (`siaf`.`Email` <> 'sin@correo.com') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (`siaf`.`Email` = 'sin@correo.com') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' when ((`sice`.`Destinatario` = 'N/A') and (not(regexp_like(`sice`.`Nombre_documento`,'PCL_SOL_DOC_|PCL_DML_|PCL_OFICIO_INC_|PCL_OFICIO_REC_|PCL_OFICIO_FB_|PCL_OFICIO_FC_|PCL_OFICIO_FD_|PCL_OFICIO_FE_|PCL_OFICIO_REV_|PCL_OFICIO_|PCL_ACUERDO_|PCL_DESACUERDO_|ORI_SOL_DOC_|ORI_DML_|ORI_OFICIO_|ORI_DESACUERDO_|ORI_ACUERDO_|JUN_DESACUERDO_|JUN_ACUERDO_|JUN_OFICIOA_AFILIADO_|JUN_OFICIO_JRCI_|JUN_REM_EXPEDIENTE_|JUN_DEV_EXPEDIENTE_|JUN_SOL_DICTAMEN_|Comunicado_SAL')))) then 'CARGADO_MANUALMENTE' else 'N/A' end) AS `Carpeta_impresion`,`sice`.`Nota` AS `Observaciones`,`sice`.`N_identificacion` AS `N_identificacion`,`sice`.`Destinatario` AS `Destinatario`,`sice`.`Tipo_descarga` AS `Tipo_descarga`,`sice`.`Otro_destinatario` AS `Otro_destinatario`,`sice`.`Destinatario` AS `Tipo_destinatario`,(case when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afiliado')) then `siaf`.`Nombre_afiliado` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Empleador')) then `sile`.`Empresa` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afp')) then `sient`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jrci')) then `sienti`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Eps')) then `sientid`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jnci')) then `sientida`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Arl')) then `sientidad`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Eps')) then `sien`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Arl')) then `sien`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Afp')) then `sien`.`Nombre_entidad` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'jrci')) then `sien`.`Nombre_entidad` end) AS `Nombre_destinatario`,(case when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afiliado')) then `siaf`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Empleador')) then `sile`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afp')) then `sient`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jrci')) then `sienti`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Eps')) then `sientid`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jnci')) then `sientida`.`Direccion` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Arl')) then `sientidad`.`Direccion` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Eps')) then `sien`.`Direccion` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Arl')) then `sien`.`Direccion` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Afp')) then `sien`.`Direccion` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'jrci')) then `sien`.`Direccion` end) AS `Direccion_destinatario`,(case when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afiliado')) then convert(`siaf`.`Telefono_contacto` using utf8mb4) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Empleador')) then convert(`sile`.`Telefono_empresa` using utf8mb4) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afp')) then `sient`.`Telefonos` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jrci')) then `sienti`.`Telefonos` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Eps')) then `sientid`.`Telefonos` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jnci')) then `sientida`.`Telefonos` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Arl')) then `sientidad`.`Telefonos` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Eps')) then `sien`.`Telefonos` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Arl')) then `sien`.`Telefonos` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Afp')) then `sien`.`Telefonos` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'jrci')) then `sien`.`Telefonos` end) AS `Telefono_destinatario`,(case when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afiliado')) then concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Empleador')) then concat(`sldmu`.`Nombre_municipio`,' - ',`sldmu`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afp')) then concat(`sldmun`.`Nombre_municipio`,' - ',`sldmun`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jrci')) then concat(`sldmuni`.`Nombre_municipio`,' - ',`sldmuni`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Eps')) then concat(`sldmunici`.`Nombre_municipio`,' - ',`sldmunici`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jnci')) then concat(`sldmunicip`.`Nombre_municipio`,' - ',`sldmunicip`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Arl')) then concat(`sldmunicipi`.`Nombre_municipio`,' - ',`sldmunicipi`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Eps')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Arl')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Afp')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'jrci')) then concat(`sldmunic`.`Nombre_municipio`,' - ',`sldmunic`.`Nombre_departamento`) end) AS `Ciudad_departamento`,(case when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afiliado')) then `siaf`.`Email` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Empleador')) then `sile`.`Email` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Afp')) then `sient`.`Emails` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jrci')) then `sienti`.`Emails` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Eps')) then `sientid`.`Emails` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'jnci')) then `sientida`.`Emails` when ((`sice`.`Otro_destinatario` = 0) and (`sice`.`Destinatario` = 'Arl')) then `sientidad`.`Emails` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Eps')) then `sien`.`Emails` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Arl')) then `sien`.`Emails` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'Afp')) then `sien`.`Emails` when ((`sice`.`Otro_destinatario` = 1) and (`sice`.`Destinatario` = 'jrci')) then `sien`.`Emails` end) AS `Email_destinatario`,concat(`slps`.`Nombre_proceso`,' - ',`slps`.`Nombre_servicio`) AS `Proceso_servicio`,`siac`.`Accion` AS `Ultima_accion`,`slpa`.`Nombre_parametro` AS `Estado`,`siae`.`N_de_orden` AS `N_de_orden`,(case when ((`sice`.`Destinatario` in ('Afiliado','Beneficiario')) and (`sice`.`Id_Destinatarios` like '%AFI_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('AFI_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'Empleador') and (`sice`.`Id_Destinatarios` like '%EMP_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('EMP_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'Eps') and (`sice`.`Id_Destinatarios` like '%EPS_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('EPS_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'Afp') and (`sice`.`Id_Destinatarios` like '%AFP_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('AFP_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'Arl') and (`sice`.`Id_Destinatarios` like '%ARL_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('ARL_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'jrci') and (`sice`.`Id_Destinatarios` like '%JRC_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('JRC_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'jnci') and (`sice`.`Id_Destinatarios` like '%JNC_%')) then substring_index(substr(`sice`.`Id_Destinatarios`,locate('JNC_',`sice`.`Id_Destinatarios`)),',',1) when ((`sice`.`Destinatario` = 'N/A') and (`sicoev`.`Id_comunicado` = `sice`.`Id_Comunicado`)) then NULL when (`sice`.`Destinatario` = 'N/A') then `sice`.`Id_Destinatarios` end) AS `Id_destinatario`,(case when (`sice`.`Tipo_descarga` = 'Manual') then NULL else 'Principal' end) AS `Tipo_correspondencia`,`sice`.`Estado_Notificacion` AS `Estado_general_notificacion`,`siae`.`Notificacion` AS `Bandeja_notificaciones` from ((((((((((((((((((((((`sigmel_informacion_comunicado_eventos` `sice` left join `sigmel_informacion_asignacion_eventos` `siae` on((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`))) left join `sigmel_lista_procesos_servicios` `slps` on((`slps`.`Id_Servicio` = `siae`.`Id_servicio`))) left join `sigmel_informacion_acciones` `siac` on((`siac`.`Id_Accion` = `siae`.`Id_accion`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `siae`.`Id_Estado_evento`))) left join `sigmel_informacion_afiliado_eventos` `siaf` on((`siaf`.`ID_evento` = `sice`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien` on((`sien`.`Id_Entidad` = `sice`.`Nombre_destinatario`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`sile`.`ID_evento` = `sice`.`ID_evento`))) left join `sigmel_informacion_entidades` `sient` on((`sient`.`Id_Entidad` = `siaf`.`Id_afp`))) left join `sigmel_informacion_controversia_juntas_eventos` `sicje` on((`sicje`.`Id_Asignacion` = `sice`.`Id_Asignacion`))) left join `sigmel_informacion_entidades` `sienti` on((`sienti`.`Id_Entidad` = `sicje`.`Jrci_califi_invalidez`))) left join `sigmel_informacion_entidades` `sientid` on((`sientid`.`Id_Entidad` = `siaf`.`Id_eps`))) left join `sigmel_informacion_entidades` `sientidad` on((`sientidad`.`Id_Entidad` = `siaf`.`Id_arl`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`sldm`.`Id_municipios` = `siaf`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmu` on((`sldmu`.`Id_municipios` = `sile`.`Id_municipio`))) left join `sigmel_lista_departamentos_municipios` `sldmun` on((`sldmun`.`Id_municipios` = `sient`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmuni` on((`sldmuni`.`Id_municipios` = `sienti`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunic` on((`sldmunic`.`Id_municipios` = `sien`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunici` on((`sldmunici`.`Id_municipios` = `sientid`.`Id_Ciudad`))) left join `sigmel_informacion_entidades` `sientida` on((`sientida`.`IdTipo_entidad` = 5))) left join `sigmel_lista_departamentos_municipios` `sldmunicip` on((`sldmunicip`.`Id_municipios` = `sientida`.`Id_Ciudad`))) left join `sigmel_lista_departamentos_municipios` `sldmunicipi` on((`sldmunicipi`.`Id_municipios` = `sientidad`.`Id_Ciudad`))) left join `sigmel_informacion_correspondencia_eventos` `sicoev` on((`sicoev`.`Id_comunicado` = `sice`.`Id_Comunicado`))) where (`sice`.`Estado_Notificacion` <> '355') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_principales_dos`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_principales_dos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_principales_dos` AS select `crnp2`.`Id_Comunicado` AS `Id_Comunicado`,`crnp2`.`ID_evento` AS `ID_evento`,`crnp2`.`Id_Asignacion` AS `Id_Asignacion`,`crnp2`.`Id_proceso` AS `Id_proceso`,`crnp2`.`Id_servicio` AS `Id_servicio`,`crnp2`.`F_comunicado` AS `F_comunicado`,`crnp2`.`N_radicado` AS `N_radicado`,`crnp2`.`Nombre_documento` AS `Nombre_documento`,`crnp2`.`Carpeta_impresion` AS `Carpeta_impresion`,`crnp2`.`Observaciones` AS `Observaciones`,`crnp2`.`N_identificacion` AS `N_identificacion`,`crnp2`.`Destinatario` AS `Destinatario`,`crnp2`.`Tipo_descarga` AS `Tipo_descarga`,`crnp2`.`Otro_destinatario` AS `Otro_destinatario`,`crnp2`.`Tipo_destinatario` AS `Tipo_destinatario`,`crnp2`.`Nombre_destinatario` AS `Nombre_destinatario`,`crnp2`.`Direccion_destinatario` AS `Direccion_destinatario`,`crnp2`.`Telefono_destinatario` AS `Telefono_destinatario`,`crnp2`.`Ciudad_departamento` AS `Ciudad_departamento`,`crnp2`.`Email_destinatario` AS `Email_destinatario`,`crnp2`.`Proceso_servicio` AS `Proceso_servicio`,`crnp2`.`Ultima_accion` AS `Ultima_accion`,`crnp2`.`Estado` AS `Estado`,`crnp2`.`N_de_orden` AS `N_de_orden`,`crnp2`.`Id_destinatario` AS `Id_destinatario`,convert(`crnp2`.`Tipo_correspondencia` using utf8mb3) AS `Tipo_correspondencia`,(case when (trim(substring_index(`crnp2`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`N_guia` end) AS `N_guia`,(case when (trim(substring_index(`crnp2`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`Folios` end) AS `Folios`,(case when (trim(substring_index(`crnp2`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_envio` end) AS `F_envio`,(case when (trim(substring_index(`crnp2`.`Id_destinatario`,'_',-(1))) = trim(`sicoev`.`Id_destinatario`)) then `sicoev`.`F_notificacion` end) AS `F_notificacion`,`crnp2`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crnp2`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from (`cnvista_reportes_notificaciones_principales` `crnp2` left join `sigmel_informacion_correspondencia_eventos` `sicoev` on((trim(`sicoev`.`Id_destinatario`) = trim(substring_index(`crnp2`.`Id_destinatario`,'_',-(1)))))) where (`crnp2`.`Id_destinatario` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_notificaciones_uniones`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_notificaciones_uniones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_notificaciones_uniones` AS select `crncopias3`.`Id_Comunicado` AS `Id_Comunicado`,`crncopias3`.`ID_evento` AS `ID_evento`,`crncopias3`.`Id_Asignacion` AS `Id_Asignacion`,`crncopias3`.`Id_proceso` AS `Id_proceso`,`crncopias3`.`Id_servicio` AS `Id_servicio`,`crncopias3`.`F_comunicado` AS `F_comunicado`,`crncopias3`.`N_radicado` AS `N_radicado`,`crncopias3`.`Nombre_documento` AS `Nombre_documento`,`crncopias3`.`Carpeta_impresion` AS `Carpeta_impresion`,`crncopias3`.`Observaciones` AS `Observaciones`,`crncopias3`.`N_identificacion` AS `N_identificacion`,`crncopias3`.`Destinatario` AS `Destinatario`,`crncopias3`.`Tipo_descarga` AS `Tipo_descarga`,`crncopias3`.`Otro_destinatario` AS `Otro_destinatario`,`crncopias3`.`Tipo_destinatario` AS `Tipo_destinatario`,`crncopias3`.`Nombre_destinatario` AS `Nombre_destinatario`,convert(`crncopias3`.`Direccion_destinatario` using utf8mb3) AS `Direccion_destinatario`,convert(`crncopias3`.`Telefono_destinatario` using utf8mb3) AS `Telefono_destinatario`,`crncopias3`.`Ciudad_departamento` AS `Ciudad_departamento`,convert(`crncopias3`.`Email_destinatario` using utf8mb3) AS `Email_destinatario`,`crncopias3`.`Proceso_servicio` AS `Proceso_servicio`,`crncopias3`.`Ultima_accion` AS `Ultima_accion`,`crncopias3`.`Estado` AS `Estado`,`crncopias3`.`N_de_orden` AS `N_de_orden`,`crncopias3`.`Id_destinatario` AS `Id_destinatario`,convert(`crncopias3`.`Tipo_correspondencia` using utf8mb3) AS `Tipo_correspondencia`,`crncopias3`.`N_guia` AS `N_guia`,`crncopias3`.`Folios` AS `Folios`,`crncopias3`.`F_envio` AS `F_envio`,`crncopias3`.`F_notificacion` AS `F_notificacion`,`crncopias3`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crncopias3`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from `cnvista_reportes_notificaciones_copias_tres` `crncopias3` where (`crncopias3`.`Carpeta_impresion` <> 'N/A') union select `crncorrespondencia3`.`Id_Comunicado` AS `Id_Comunicado`,`crncorrespondencia3`.`ID_evento` AS `ID_evento`,`crncorrespondencia3`.`Id_Asignacion` AS `Id_Asignacion`,`crncorrespondencia3`.`Id_proceso` AS `Id_proceso`,`crncorrespondencia3`.`Id_servicio` AS `Id_servicio`,`crncorrespondencia3`.`F_comunicado` AS `F_comunicado`,`crncorrespondencia3`.`N_radicado` AS `N_radicado`,`crncorrespondencia3`.`Nombre_documento` AS `Nombre_documento`,`crncorrespondencia3`.`Carpeta_impresion` AS `Carpeta_impresion`,`crncorrespondencia3`.`Observaciones` AS `Observaciones`,`crncorrespondencia3`.`N_identificacion` AS `N_identificacion`,`crncorrespondencia3`.`Destinatario` AS `Destinatario`,`crncorrespondencia3`.`Tipo_descarga` AS `Tipo_descarga`,`crncorrespondencia3`.`Otro_destinatario` AS `Otro_destinatario`,`crncorrespondencia3`.`Tipo_destinatario` AS `Tipo_destinatario`,`crncorrespondencia3`.`Nombre_destinatario` AS `Nombre_destinatario`,convert(`crncorrespondencia3`.`Direccion_destinatario` using utf8mb3) AS `Direccion_destinatario`,convert(`crncorrespondencia3`.`Telefono_destinatario` using utf8mb3) AS `Telefono_destinatario`,`crncorrespondencia3`.`Ciudad_departamento` AS `Ciudad_departamento`,convert(`crncorrespondencia3`.`Email_destinatario` using utf8mb3) AS `Email_destinatario`,`crncorrespondencia3`.`Proceso_servicio` AS `Proceso_servicio`,`crncorrespondencia3`.`Ultima_accion` AS `Ultima_accion`,`crncorrespondencia3`.`Estado` AS `Estado`,`crncorrespondencia3`.`N_de_orden` AS `N_de_orden`,`crncorrespondencia3`.`Id_destinatario` AS `Id_destinatario`,convert(`crncorrespondencia3`.`Tipo_correspondencia` using utf8mb3) AS `Tipo_correspondencia`,`crncorrespondencia3`.`N_guia` AS `N_guia`,`crncorrespondencia3`.`Folios` AS `Folios`,`crncorrespondencia3`.`F_envio` AS `F_envio`,`crncorrespondencia3`.`F_notificacion` AS `F_notificacion`,`crncorrespondencia3`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crncorrespondencia3`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from `cnvista_reportes_notificaciones_correspondencias_tres` `crncorrespondencia3` where (`crncorrespondencia3`.`Carpeta_impresion` <> 'N/A') union select `crnprinpales`.`Id_Comunicado` AS `Id_Comunicado`,`crnprinpales`.`ID_evento` AS `ID_evento`,`crnprinpales`.`Id_Asignacion` AS `Id_Asignacion`,`crnprinpales`.`Id_proceso` AS `Id_proceso`,`crnprinpales`.`Id_servicio` AS `Id_servicio`,`crnprinpales`.`F_comunicado` AS `F_comunicado`,`crnprinpales`.`N_radicado` AS `N_radicado`,`crnprinpales`.`Nombre_documento` AS `Nombre_documento`,`crnprinpales`.`Carpeta_impresion` AS `Carpeta_impresion`,`crnprinpales`.`Observaciones` AS `Observaciones`,`crnprinpales`.`N_identificacion` AS `N_identificacion`,`crnprinpales`.`Destinatario` AS `Destinatario`,`crnprinpales`.`Tipo_descarga` AS `Tipo_descarga`,`crnprinpales`.`Otro_destinatario` AS `Otro_destinatario`,`crnprinpales`.`Tipo_destinatario` AS `Tipo_destinatario`,`crnprinpales`.`Nombre_destinatario` AS `Nombre_destinatario`,convert(`crnprinpales`.`Direccion_destinatario` using utf8mb3) AS `Direccion_destinatario`,convert(`crnprinpales`.`Telefono_destinatario` using utf8mb3) AS `Telefono_destinatario`,`crnprinpales`.`Ciudad_departamento` AS `Ciudad_departamento`,convert(`crnprinpales`.`Email_destinatario` using utf8mb3) AS `Email_destinatario`,`crnprinpales`.`Proceso_servicio` AS `Proceso_servicio`,`crnprinpales`.`Ultima_accion` AS `Ultima_accion`,`crnprinpales`.`Estado` AS `Estado`,`crnprinpales`.`N_de_orden` AS `N_de_orden`,`crnprinpales`.`Id_destinatario` AS `Id_destinatario`,convert(`crnprinpales`.`Tipo_correspondencia` using utf8mb3) AS `Tipo_correspondencia`,`crnprinpales`.`N_guia` AS `N_guia`,`crnprinpales`.`Folios` AS `Folios`,`crnprinpales`.`F_envio` AS `F_envio`,`crnprinpales`.`F_notificacion` AS `F_notificacion`,`crnprinpales`.`Estado_general_notificacion` AS `Estado_general_notificacion`,`crnprinpales`.`Bandeja_notificaciones` AS `Bandeja_notificaciones` from `cnvista_reportes_notificaciones_principales_dos` `crnprinpales` where (`crnprinpales`.`Carpeta_impresion` <> 'N/A') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_trazabilidad_juntas`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_juntas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_trazabilidad_juntas` AS select `siae`.`ID_evento` AS `ID_evento`,`siae`.`Id_Asignacion` AS `Id_Asignacion`,`siae`.`Id_proceso` AS `Id_proceso`,(case when (`siae`.`Id_servicio` = '12') then 'CONTROVERSIA ORIGEN' when (`siae`.`Id_servicio` = '13') then 'CONTROVERSIA PCL' end) AS `Servicio`,`slp`.`Nombre_parametro` AS `Tipo_documento`,`siaf`.`Nro_identificacion` AS `N_identificacion`,`siaf`.`Nombre_afiliado` AS `Nombre_completo`,`slp_activador`.`Nombre_parametro` AS `Activador`,coalesce(`sie`.`N_siniestro`,'') AS `N_radicado_siniestro`,`sie`.`ID_evento` AS `N_solicitud_evento`,coalesce(`sipc`.`Motivo_descripcion_movimiento`,'') AS `Conducta_actual`,date_format(cast(`siae`.`F_accion` as date),'%d/%m/%Y') AS `F_ultima_accion`,`sia`.`Id_Accion` AS `Id_Accion_ultima`,`sia`.`Accion` AS `ultima_accion`,(case when (`siae`.`Id_servicio` in ('12','13')) then ifnull(date_format(`sicje`.`F_radicacion_pri_opor`,'%d/%m/%Y'),'') else '' end) AS `Fecha_radicacion_pcl`,(case when (`siae`.`Id_servicio` = '12') then '' when (`siae`.`Id_servicio` = '13') then ifnull(date_format(`sicje`.`F_estructuracion_contro`,'%d/%m/%Y'),'') else '' end) AS `F_estructuracion_pcl`,(case when ((`siae`.`Id_servicio` in ('12','13')) and (`sie`.`Tipo_evento` is not null) and (`sicje`.`Origen_controversia` is not null)) then concat_ws(' ',`slte`.`Nombre_evento`,`slp_origen_contro`.`Nombre_parametro`) else '' end) AS `Origen`,(case when (`siae`.`Id_servicio` = '12') then '' when (`siae`.`Id_servicio` = '13') then ifnull(replace(`sicje`.`Porcentaje_pcl`,'.',','),'') else '' end) AS `Porcentaje_pcl`,(case when (`siae`.`Id_servicio` in ('12','13')) then ifnull(date_format(`sicje`.`F_notifi_afiliado`,'%d/%m/%Y'),'') else '' end) AS `F_notificacion_efectiva_afiliado`,(case when (`sicje`.`F_notifi_afiliado` is not null) then 'SI' else 'NO' end) AS `Notificado_todas_las_partes`,(case when (`siae`.`Id_servicio` in ('12','13')) then ifnull(date_format(`sicje`.`F_contro_radi_califi`,'%d/%m/%Y'),'') else '' end) AS `F_controversia`,coalesce(`slp_parte_controvierte`.`Nombre_parametro`,'') AS `Parte_controvierte`,(case when (coalesce(`sicje`.`Contro_origen`,`sicje`.`Contro_pcl`,`sicje`.`Contro_diagnostico`,`sicje`.`Contro_f_estructura`,`sicje`.`Contro_m_califi`) is null) then '' else concat_ws(', ',`sicje`.`Contro_origen`,`sicje`.`Contro_pcl`,`sicje`.`Contro_diagnostico`,`sicje`.`Contro_f_estructura`,`sicje`.`Contro_m_califi`) end) AS `Motivo_controversia`,date_format(`siae`.`F_radicacion`,'%d/%m/%Y') AS `F_inicio_gestion_controversia`,(case when ((`sicje`.`F_contro_radi_califi` is null) or (`sicje`.`F_notifi_afiliado` is null)) then '' else ((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `sicje`.`F_notifi_afiliado` and `sicje`.`F_contro_radi_califi`) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) end) AS `Dias_notificacion_apelacion`,(case when ((`sicje`.`F_contro_radi_califi` is null) or (`sicje`.`F_notifi_afiliado` is null)) then 'N/A' else (case when (`sicje`.`Termino_contro_califi` = 'Dentro de términos') then 'SI' when (`sicje`.`Termino_contro_califi` = 'Fuera de términos') then 'NO' when (`sicje`.`Termino_contro_califi` is null) then '' end) end) AS `Procede_apelacion`,coalesce(date_format(`sicje`.`F_plazo_controversia`,'%d/%m/%Y'),'') AS `F_max_controversia`,coalesce(`novedad_controversia`.`Descripcion_seguimiento`,'') AS `Novedades_controversia`,coalesce(`sien`.`Nombre_entidad`,'') AS `Junta_regional` from ((((((((((((`sigmel_informacion_controversia_juntas_eventos` `sicje` left join `sigmel_informacion_asignacion_eventos` `siae` on((`sicje`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) left join `sigmel_informacion_afiliado_eventos` `siaf` on((`sicje`.`ID_evento` = `siaf`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `siaf`.`Tipo_documento`))) left join `sigmel_informacion_eventos` `sie` on((`siae`.`ID_evento` = `sie`.`ID_evento`))) left join `sigmel_lista_parametros` `slp_activador` on((`slp_activador`.`Id_Parametro` = `sie`.`Activador`))) left join `sigmel_informacion_parametrizaciones_clientes` `sipc` on(((`sipc`.`Id_proceso` = `siae`.`Id_proceso`) and (`sipc`.`Servicio_asociado` = `siae`.`Id_servicio`) and (`sipc`.`Accion_ejecutar` = `siae`.`Id_accion`)))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `siae`.`Id_accion`))) left join `sigmel_lista_tipo_eventos` `slte` on((`sie`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_lista_parametros` `slp_origen_contro` on((`sicje`.`Origen_controversia` = `slp_origen_contro`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp_parte_controvierte` on((`sicje`.`Parte_controvierte_califi` = `slp_parte_controvierte`.`Id_Parametro`))) left join (select `sise`.`Descripcion_seguimiento` AS `Descripcion_seguimiento`,`sise`.`Id_Asignacion` AS `Id_Asignacion`,`sise`.`Id_proceso` AS `Id_proceso` from `sigmel_informacion_seguimientos_eventos` `sise` order by `sise`.`F_seguimiento` desc limit 1) `novedad_controversia` on(((`novedad_controversia`.`Id_Asignacion` = `siae`.`Id_Asignacion`) and (`novedad_controversia`.`Id_proceso` = `siae`.`Id_proceso`)))) left join `sigmel_informacion_entidades` `sien` on((`sicje`.`Jrci_califi_invalidez` = `sien`.`Id_Entidad`))) where (`siae`.`Id_servicio` in ('12','13')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_trazabilidad_pcls`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_trazabilidad_pcls` AS select `siae`.`ID_evento` AS `ID_evento`,`siae`.`Id_Asignacion` AS `Id_Asignacion`,`siae`.`Id_proceso` AS `Id_proceso`,(select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension','Formato_B_Revision_pension','Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN','Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) AS `Id_Comunicado_general`,(select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) AS `Id_Comunicado_guia_sol_com`,(select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Formato_B_Revision_pension','Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) AS `Id_Comunicado_submodulos`,(select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) AS `Id_Comunicado_pcl_cierre_admin`,`siae`.`Id_servicio` AS `Id_servicio`,(case when (`siae`.`Id_servicio` = '1') then 'CALIFICACIÓN ORIGEN AT' when (`siae`.`Id_servicio` = '6') then 'CALIFICACIÓN PCL' when (`siae`.`Id_servicio` = '7') then 'RECALIFICACIÓN PCL' when (`siae`.`Id_servicio` = '8') then 'REVISIÓN PENSIÓN' when (`siae`.`Id_servicio` = '9') then 'PRONUNCIAMIENTO PCL' end) AS `Servicio`,`slp`.`Nombre_parametro` AS `Tipo_documentos`,`siaf`.`Nro_identificacion` AS `N_identificacion`,`siaf`.`Nombre_afiliado` AS `Nombre_completo`,`slpa`.`Nombre_parametro` AS `Activador`,`sie`.`N_siniestro` AS `N_radicado_siniestro`,`sie`.`ID_evento` AS `N_solicitud_evento`,`sipc`.`Motivo_descripcion_movimiento` AS `Conducta_actual`,cast(`siae`.`F_accion` as date) AS `F_ultima_accion`,`sia`.`Id_Accion` AS `Id_Accion_ultima`,`sia`.`Accion` AS `ultima_accion`,`siae`.`F_radicacion` AS `F_radicacion`,`siae`.`F_registro` AS `F_asignacion_gestion`,((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and `siae`.`F_registro`) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) AS `Dias_control_asignacion`,(case when (((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and `siae`.`F_registro`) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) <= 3) then 'CUMPLE' else 'NO CUMPLE' end) AS `Control_asignacion`,(select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) AS `F_emision_1ra_conducta`,(case when ((select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) is null) then ((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and now()) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) when (select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) then ((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and (select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`)))) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) end) AS `Dias_control_1ra_conducnta`,(case when ((select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) is null) then (case when (((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and now()) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) <= 5) then 'CUMPLE' else 'NO CUMPLE' end) when (select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) then (case when (((select count(0) from `sigmel_calendarios` `cale` where ((`cale`.`Fecha` between `siae`.`F_radicacion` and (select min(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (3,6,7,8,10,11,13,14,17,21,25,27,30,52)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`)))) and (`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Calendario` = 'LunesAViernes'))) - 1) <= 5) then 'CUMPLE' else 'NO CUMPLE' end) end) AS `Control_1ra_conducta`,`siae`.`Nueva_F_radicacion` AS `Nueva_F_radicacion`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (52,53)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) is not null) then 'SI' else 'NO' end) AS `Complementos`,(select max(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (52,53)) and (`sihae`.`ID_evento` = `siae`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `siae`.`Id_Asignacion`))) AS `F_sol_complementos`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `siaf`.`Medio_notificacion` end) AS `Medio_envio_complementos`,(case when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 357) then 'Notificado efectivamente' when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`siae`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 358) then 'Notificado parcialmente' end) AS `Estado_entrega_complementos` from (((((((`sigmel_informacion_eventos` `sie` left join `sigmel_informacion_asignacion_eventos` `siae` on((`siae`.`ID_evento` = `sie`.`ID_evento`))) left join `sigmel_informacion_afiliado_eventos` `siaf` on((`siaf`.`ID_evento` = `sie`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `siaf`.`Tipo_documento`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `sie`.`Activador`))) left join `sigmel_informacion_parametrizaciones_clientes` `sipc` on(((`sipc`.`Id_proceso` = `siae`.`Id_proceso`) and (`sipc`.`Servicio_asociado` = `siae`.`Id_servicio`) and (`sipc`.`Accion_ejecutar` = `siae`.`Id_accion`)))) left join `sigmel_informacion_acciones` `sia` on((`sia`.`Id_Accion` = `siae`.`Id_accion`))) left join `sigmel_calendarios` `cale` on(((`cale`.`Fecha` = `siae`.`F_radicacion`) and (`cale`.`Calendario` = 'LunesAViernes')))) where (`siae`.`Id_servicio` in ('1','6','7','8','9')) group by `siae`.`Id_Asignacion`,`slp`.`Nombre_parametro`,`siaf`.`Nro_identificacion`,`siaf`.`Nombre_afiliado`,`slpa`.`Nombre_parametro`,`sie`.`N_siniestro`,`sie`.`ID_evento`,`sipc`.`Motivo_descripcion_movimiento`,`siaf`.`Medio_notificacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_trazabilidad_pcls_dos`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls_dos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_trazabilidad_pcls_dos` AS select `crtp`.`ID_evento` AS `ID_evento`,`crtp`.`Id_Asignacion` AS `Id_Asignacion`,`crtp`.`Id_proceso` AS `Id_proceso`,`crtp`.`Id_Comunicado_general` AS `Id_Comunicado_general`,`crtp`.`Id_Comunicado_guia_sol_com` AS `Id_Comunicado_guia_sol_com`,`crtp`.`Id_Comunicado_submodulos` AS `Id_Comunicado_submodulos`,`crtp`.`Id_Comunicado_pcl_cierre_admin` AS `Id_Comunicado_pcl_cierre_admin`,`crtp`.`Id_servicio` AS `Id_servicio`,`crtp`.`Servicio` AS `Servicio`,`crtp`.`Tipo_documentos` AS `Tipo_documentos`,`crtp`.`N_identificacion` AS `N_identificacion`,`crtp`.`Nombre_completo` AS `Nombre_completo`,`crtp`.`Activador` AS `Activador`,`crtp`.`N_radicado_siniestro` AS `N_radicado_siniestro`,`crtp`.`N_solicitud_evento` AS `N_solicitud_evento`,`crtp`.`Conducta_actual` AS `Conducta_actual`,`crtp`.`F_ultima_accion` AS `F_ultima_accion`,`crtp`.`Id_Accion_ultima` AS `Id_Accion_ultima`,`crtp`.`ultima_accion` AS `ultima_accion`,`crtp`.`F_radicacion` AS `F_radicacion`,`crtp`.`F_asignacion_gestion` AS `F_asignacion_gestion`,`crtp`.`Dias_control_asignacion` AS `Dias_control_asignacion`,`crtp`.`Control_asignacion` AS `Control_asignacion`,`crtp`.`F_emision_1ra_conducta` AS `F_emision_1ra_conducta`,`crtp`.`Dias_control_1ra_conducnta` AS `Dias_control_1ra_conducnta`,`crtp`.`Control_1ra_conducta` AS `Control_1ra_conducta`,`crtp`.`Nueva_F_radicacion` AS `Nueva_F_radicacion`,`crtp`.`Complementos` AS `Complementos`,`crtp`.`F_sol_complementos` AS `F_sol_complementos`,`crtp`.`Medio_envio_complementos` AS `Medio_envio_complementos`,`crtp`.`Estado_entrega_complementos` AS `Estado_entrega_complementos`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sico`.`F_notificacion` end) AS `F_noti_efectiva_complementos`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Documento_PCL','Documento_Revision_pension','Reiteracion_Documento_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sico`.`N_guia` end) AS `Guia_complementos_afiliado`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (47,48,49)) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) is not null) then 'SI' else 'NO' end) AS `Prorroga`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (47,48,49)) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) is not null) then (select max(`sub`.`Fecha`) from (select `cale`.`Fecha` AS `Fecha` from `sigmel_calendarios` `cale` where ((`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Fecha` > `crtp`.`F_ultima_accion`) and (`cale`.`Calendario` = 'LunesAViernes')) order by `cale`.`Fecha` limit 30) `sub`) end) AS `F_prorroga`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` in (47,48,49)) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) is not null) then (case when ((select max(`sub`.`Fecha`) from (select `cale`.`Fecha` AS `Fecha` from `sigmel_calendarios` `cale` where ((`cale`.`EsHabil` = 1) and (`cale`.`EsFestivo` = 0) and (`cale`.`Fecha` > `crtp`.`F_ultima_accion`) and (`cale`.`Calendario` = 'LunesAViernes')) order by `cale`.`Fecha` limit 30) `sub`) >= now()) then 'VIGENTE' else 'VENCIDA' end) end) AS `Estado_prorroga`,(select max(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 45) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) AS `F_aporte_complementos`,(select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 45) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) AS `Id_accion_historial`,(select max(`sihae`.`Id_historial_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 45) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) AS `Id_historial_accion`,(select max(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 44) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) AS `F_asignacion_cita`,`siae`.`F_primera_cita` AS `F_1ra_cita`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 51) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) is not null) then 'SI' else 'NO' end) AS `Cita_reprogramada`,`slp_causal_incumple_primera_cita`.`Nombre_parametro` AS `Causal_incumpli_1ra_cita`,(select max(cast(`sihae`.`F_accion` as date)) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 51) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) AS `F_asignacion_2da_cita`,`siae`.`F_segunda_cita` AS `F_2da_cita`,(case when ((select max(`sihae`.`Id_accion`) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` = 12) and (`sihae`.`ID_evento` = `crtp`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`))) is not null) then 'SI' else 'NO' end) AS `Cierre_2da_cita`,`slp_causal_incumple_segunda_cita`.`Nombre_parametro` AS `Causal_incumpli_2da_cita` from ((((`cnvista_reportes_trazabilidad_pcls` `crtp` left join `sigmel_informacion_correspondencia_eventos` `sico` on(((`sico`.`Id_Asignacion` = `crtp`.`Id_Asignacion`) and (`sico`.`Id_comunicado` = `crtp`.`Id_Comunicado_guia_sol_com`) and (`sico`.`Tipo_correspondencia` = 'Afiliado')))) left join `sigmel_informacion_accion_eventos` `siae` on(((`siae`.`Id_Asignacion` = `crtp`.`Id_Asignacion`) and (`siae`.`ID_evento` = `crtp`.`ID_evento`)))) left join `sigmel_lista_parametros` `slp_causal_incumple_primera_cita` on((`siae`.`Causal_incumplimiento_primera_cita` = `slp_causal_incumple_primera_cita`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp_causal_incumple_segunda_cita` on((`siae`.`Causal_incumplimiento_segunda_cita` = `slp_causal_incumple_segunda_cita`.`Id_Parametro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cnvista_reportes_trazabilidad_pcls_tres`
--

/*!50001 DROP VIEW IF EXISTS `cnvista_reportes_trazabilidad_pcls_tres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cnvista_reportes_trazabilidad_pcls_tres` AS select `crtp2`.`ID_evento` AS `ID_evento`,`crtp2`.`Id_Asignacion` AS `Id_Asignacion`,`crtp2`.`Id_proceso` AS `Id_proceso`,`crtp2`.`Id_Comunicado_general` AS `Id_Comunicado_general`,`crtp2`.`Id_Comunicado_guia_sol_com` AS `Id_Comunicado_guia_sol_com`,`crtp2`.`Id_Comunicado_submodulos` AS `Id_Comunicado_submodulos`,`crtp2`.`Id_Comunicado_pcl_cierre_admin` AS `Id_Comunicado_pcl_cierre_admin`,`crtp2`.`Id_servicio` AS `Id_servicio`,`crtp2`.`Servicio` AS `Servicio`,`crtp2`.`Tipo_documentos` AS `Tipo_documentos`,`crtp2`.`N_identificacion` AS `N_identificacion`,`crtp2`.`Nombre_completo` AS `Nombre_completo`,`crtp2`.`Activador` AS `Activador`,`crtp2`.`N_radicado_siniestro` AS `N_radicado_siniestro`,`crtp2`.`N_solicitud_evento` AS `N_solicitud_evento`,`crtp2`.`Conducta_actual` AS `Conducta_actual`,`crtp2`.`F_ultima_accion` AS `F_ultima_accion`,`crtp2`.`Id_Accion_ultima` AS `Id_Accion_ultima`,`crtp2`.`ultima_accion` AS `ultima_accion`,`crtp2`.`F_radicacion` AS `F_radicacion`,`crtp2`.`F_asignacion_gestion` AS `F_asignacion_gestion`,`crtp2`.`Dias_control_asignacion` AS `Dias_control_asignacion`,`crtp2`.`Control_asignacion` AS `Control_asignacion`,`crtp2`.`F_emision_1ra_conducta` AS `F_emision_1ra_conducta`,`crtp2`.`Dias_control_1ra_conducnta` AS `Dias_control_1ra_conducnta`,`crtp2`.`Control_1ra_conducta` AS `Control_1ra_conducta`,`crtp2`.`Nueva_F_radicacion` AS `Nueva_F_radicacion`,`crtp2`.`Complementos` AS `Complementos`,`crtp2`.`F_sol_complementos` AS `F_sol_complementos`,`crtp2`.`Medio_envio_complementos` AS `Medio_envio_complementos`,`crtp2`.`Estado_entrega_complementos` AS `Estado_entrega_complementos`,`crtp2`.`F_noti_efectiva_complementos` AS `F_noti_efectiva_complementos`,`crtp2`.`Guia_complementos_afiliado` AS `Guia_complementos_afiliado`,`crtp2`.`Prorroga` AS `Prorroga`,`crtp2`.`F_prorroga` AS `F_prorroga`,`crtp2`.`Estado_prorroga` AS `Estado_prorroga`,`crtp2`.`F_aporte_complementos` AS `F_aporte_complementos`,`crtp2`.`Id_accion_historial` AS `Id_accion_historial`,`crtp2`.`Id_historial_accion` AS `Id_historial_accion`,(case when ((`crtp2`.`Id_accion_historial` is not null) and ((select `sihae`.`Id_accion` from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` > `crtp2`.`Id_accion_historial`) and (`sihae`.`Id_historial_accion` > `crtp2`.`Id_historial_accion`) and (`sihae`.`ID_evento` = `crtp2`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)) limit 1) = 53)) then 'NO' when ((`crtp2`.`Id_accion_historial` is not null) and ((select `sihae`.`Id_accion` from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` > `crtp2`.`Id_accion_historial`) and (`sihae`.`Id_historial_accion` > `crtp2`.`Id_historial_accion`) and (`sihae`.`ID_evento` = `crtp2`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)) limit 1) <> 53)) then 'SI' when ((`crtp2`.`Id_accion_historial` is not null) and ((select `sihae`.`Id_accion` from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`Id_accion` < `crtp2`.`Id_accion_historial`) and (`sihae`.`Id_historial_accion` > `crtp2`.`Id_historial_accion`) and (`sihae`.`ID_evento` = `crtp2`.`ID_evento`) and (`sihae`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)) limit 1) <> 53)) then 'SI' end) AS `Aportado_correcto`,`crtp2`.`F_asignacion_cita` AS `F_asignacion_cita`,`crtp2`.`F_1ra_cita` AS `F_1ra_cita`,`crtp2`.`Cita_reprogramada` AS `Cita_reprogramada`,`crtp2`.`Causal_incumpli_1ra_cita` AS `Causal_incumpli_1ra_cita`,`crtp2`.`F_asignacion_2da_cita` AS `F_asignacion_2da_cita`,`crtp2`.`F_2da_cita` AS `F_2da_cita`,`crtp2`.`Cierre_2da_cita` AS `Cierre_2da_cita`,`crtp2`.`Causal_incumpli_2da_cita` AS `Causal_incumpli_2da_cita`,(case when (`crtp2`.`Id_servicio` in (1,6,7,8)) then `sicie`.`F_visado_comite` when (`crtp2`.`Id_servicio` = 9) then `sipe`.`Fecha_calificador` end) AS `F_emision_dml`,(case when (`crtp2`.`Id_servicio` in (6,7,8)) then `side`.`Porcentaje_pcl` when (`crtp2`.`Id_servicio` = 9) then `sipe`.`Porcentaje_pcl` end) AS `Porcentaje_pcl`,(case when (`crtp2`.`Id_servicio` in (6,7,8)) then `side`.`F_estructuracion` when (`crtp2`.`Id_servicio` = 9) then `sipe`.`Fecha_estruturacion` end) AS `F_estructuracion`,(case when (`crtp2`.`Id_servicio` in (6,7,8)) then concat(`sltev`.`Nombre_evento`,' ',`slpa`.`Nombre_parametro`) when (`crtp2`.`Id_servicio` = 9) then concat(`slte`.`Nombre_evento`,' ',`slp`.`Nombre_parametro`) when (`crtp2`.`Id_servicio` = 1) then concat(`slteve`.`Nombre_evento`,' ',`slpar`.`Nombre_parametro`) end) AS `Origen`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `siaf`.`Medio_notificacion` end) AS `Medio_envio_noti_afi`,(case when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 357) then 'Notificado efectivamente' when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 358) then 'Notificado parcialmente' end) AS `Estado_general_noti`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sico`.`F_notificacion` end) AS `F_noti_efectiva_afi`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sico`.`N_guia` end) AS `Guia_afiliado`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicor`.`F_notificacion` end) AS `F_noti_efectiva_emp`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicor`.`N_guia` end) AS `Guia_empleador`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorr`.`F_notificacion` end) AS `F_noti_efectiva_eps`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorr`.`N_guia` end) AS `Guia_eps`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorre`.`F_notificacion` end) AS `F_noti_arl`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorre`.`N_guia` end) AS `Guia_arl`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorres`.`F_notificacion` end) AS `F_noti_efectiva_afp`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Oficio','ACUERDO PCL','DESACUERDO PCL','OFICIO ORIGEN')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorres`.`N_guia` end) AS `Guia_afp`,(case when (`crtp2`.`Id_Accion_ultima` in (6,7,8,9,10,11,12,13,14,26,28,30,54)) then `sia_descripcion`.`Descripcion_accion` else '' end) AS `Causal_cierre`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `siaf`.`Medio_notificacion` end) AS `Medio_envio_comunicado_cierre`,(case when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 357) then 'Notificado efectivamente' when ((select `sice`.`Estado_Notificacion` from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358))) order by `sice`.`Id_Comunicado` desc limit 1) = 358) then 'Notificado parcialmente' end) AS `Estado_envio_comunicado_cierre`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorresp`.`F_notificacion` end) AS `F_noti_efectiva_comuni_cierre`,(case when ((select max(`sice`.`Id_Comunicado`) from `sigmel_informacion_comunicado_eventos` `sice` where ((`crtp2`.`Id_Asignacion` = `sice`.`Id_Asignacion`) and (`sice`.`Tipo_descarga` in ('Cierre_MMM_PCL','Cierre_Cita_PCL','Documento_No_Recalificacion','Desistimiento_PCL','Firmeza_PCL','Suspension_Mesada_Revision_pension')) and (`sice`.`Estado_Notificacion` in (357,358)))) is not null) then `sicorresp`.`N_guia` end) AS `Guia_comuni_cierre_afi` from ((((((((((((((((((`cnvista_reportes_trazabilidad_pcls_dos` `crtp2` left join `sigmel_informacion_comite_interdisciplinario_eventos` `sicie` on(((`sicie`.`ID_evento` = `crtp2`.`ID_evento`) and (`sicie`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)))) left join `sigmel_informacion_pronunciamiento_eventos` `sipe` on(((`sipe`.`ID_evento` = `crtp2`.`ID_evento`) and (`sipe`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)))) left join `sigmel_informacion_decreto_eventos` `side` on(((`side`.`ID_Evento` = `crtp2`.`ID_evento`) and (`side`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)))) left join `sigmel_informacion_dto_atel_eventos` `sidae` on(((`sidae`.`ID_evento` = `crtp2`.`ID_evento`) and (`sidae`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`)))) left join `sigmel_lista_tipo_eventos` `slte` on((`slte`.`Id_Evento` = `sipe`.`Id_tipo_evento`))) left join `sigmel_lista_parametros` `slp` on((`slp`.`Id_Parametro` = `sipe`.`Id_tipo_origen`))) left join `sigmel_lista_tipo_eventos` `sltev` on((`sltev`.`Id_Evento` = `side`.`Tipo_evento`))) left join `sigmel_lista_parametros` `slpa` on((`slpa`.`Id_Parametro` = `side`.`Origen`))) left join `sigmel_lista_tipo_eventos` `slteve` on((`slteve`.`Id_Evento` = `sidae`.`Tipo_evento`))) left join `sigmel_lista_parametros` `slpar` on((`slpar`.`Id_Parametro` = `sidae`.`Origen`))) left join `sigmel_informacion_acciones` `sia_descripcion` on((`sia_descripcion`.`Id_Accion` = `crtp2`.`Id_Accion_ultima`))) left join `sigmel_informacion_afiliado_eventos` `siaf` on((`siaf`.`ID_evento` = `crtp2`.`ID_evento`))) left join `sigmel_informacion_correspondencia_eventos` `sico` on(((`sico`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sico`.`Id_comunicado` = `crtp2`.`Id_Comunicado_submodulos`) and (`sico`.`Tipo_correspondencia` = 'Afiliado')))) left join `sigmel_informacion_correspondencia_eventos` `sicor` on(((`sicor`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sicor`.`Id_comunicado` = `crtp2`.`Id_Comunicado_submodulos`) and (`sicor`.`Tipo_correspondencia` = 'Empleador')))) left join `sigmel_informacion_correspondencia_eventos` `sicorr` on(((`sicorr`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sicorr`.`Id_comunicado` = `crtp2`.`Id_Comunicado_submodulos`) and (`sicorr`.`Tipo_correspondencia` = 'eps')))) left join `sigmel_informacion_correspondencia_eventos` `sicorre` on(((`sicorre`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sicorre`.`Id_comunicado` = `crtp2`.`Id_Comunicado_submodulos`) and (`sicorre`.`Tipo_correspondencia` = 'arl')))) left join `sigmel_informacion_correspondencia_eventos` `sicorres` on(((`sicorres`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sicorres`.`Id_comunicado` = `crtp2`.`Id_Comunicado_submodulos`) and (`sicorres`.`Tipo_correspondencia` = 'afp_conocimiento')))) left join `sigmel_informacion_correspondencia_eventos` `sicorresp` on(((`sicorresp`.`Id_Asignacion` = `crtp2`.`Id_Asignacion`) and (`sicorresp`.`Id_comunicado` = `crtp2`.`Id_Comunicado_pcl_cierre_admin`) and (`sicorresp`.`Tipo_correspondencia` = 'Afiliado')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_facturacion_juntas`
--

/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_juntas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_facturacion_juntas` AS select `sie`.`ID_evento` AS `ID_evento`,`slp`.`Nombre_parametro` AS `Tipo_Documento`,`siae`.`Nro_identificacion` AS `Nro_identificacion`,`siae`.`Nombre_afiliado` AS `Nombre_afiliado`,`slp1`.`Nombre_parametro` AS `Tipo_De_Afiliado`,`sicje`.`F_notifi_afiliado` AS `F_Notificacion_Afiliado`,`sicje`.`F_contro_primer_califi` AS `F_Controversia_Afiliado`,`sigmel_gestiones`.`fnCalcularDiasHabiles`(`sicje`.`F_notifi_afiliado`,NULL) AS `F_Plazo_Afiliado`,`sicje`.`F_contro_radi_califi` AS `F_Radicacion`,(select `siphe`.`F_pago_honorarios` from `sigmel_informacion_pagos_honorarios_eventos` `siphe` where (`siphe`.`Id_Asignacion` = `siaev`.`Id_Asignacion`) limit 1) AS `F_Pago_Honorarios_JRCI`,`slp2`.`Nombre_parametro` AS `Fuente_Informacion`,`slps`.`Nombre_servicio` AS `Tipo_Servicio`,(case when (`sicje`.`Contro_origen` <> '') then `sicje`.`Contro_origen` else '' end) AS `Tipo_Controversia_1`,(case when (`sicje`.`Contro_pcl` <> '') then `sicje`.`Contro_pcl` else '' end) AS `Tipo_Controversia_2`,(case when (`sicje`.`Contro_diagnostico` <> '') then `sicje`.`Contro_diagnostico` else '' end) AS `Tipo_Controversia_3`,(case when (`sicje`.`Contro_f_estructura` <> '') then `sicje`.`Contro_f_estructura` else '' end) AS `Tipo_Controversia_4`,(case when (`sicje`.`Contro_m_califi` <> '') then `sicje`.`Contro_m_califi` else '' end) AS `Tipo_Controversia_5`,(select group_concat(concat_ws(' ',`slcd`.`CIE10`,`side`.`Nombre_CIE10`) separator ' | ') from (`sigmel_informacion_diagnosticos_eventos` `side` left join `sigmel_lista_cie_diagnosticos` `slcd` on((`side`.`CIE10` = `slcd`.`Id_Cie_diagnostico`))) where ((`side`.`Id_Asignacion` = `siaev`.`Id_Asignacion`) and (`side`.`Principal` = 'Si'))) AS `Dx_Principal`,`diagnosticos`.`Diagnostico_2` AS `Diagnostico_2`,`diagnosticos`.`Diagnostico_3` AS `Diagnostico_3`,`diagnosticos`.`Diagnostico_4` AS `Diagnostico_4`,`diagnosticos`.`Diagnostico_5` AS `Diagnostico_5`,`diagnosticos`.`Diagnostico_6` AS `Diagnostico_6`,`slte`.`Nombre_evento` AS `Accidente_Enfermedad`,`slp3`.`Nombre_parametro` AS `Origen_1A_Oportunidad`,`sicje`.`Porcentaje_pcl` AS `Calificacion_Pcl`,`sicje`.`F_estructuracion_contro` AS `F_estructuracion`,`slp4`.`Nombre_parametro` AS `Entidad_Califica_1A_Oportunidad`,`slp5`.`Nombre_parametro` AS `Parte_Interpone_Recurso`,`sicje`.`F_pago_jnci_contro` AS `F_Pago_JRCI`,`sicje`.`F_radica_pago_jnci_contro` AS `F_Radicacion_Pago_JRCI`,`sicje`.`F_envio_jrci` AS `F_Envio_a_Jr`,'' AS `Guia_Junta`,'' AS `Guia_Afiliado`,'' AS `Guia_Rta_Junta_Regional`,'' AS `F_Reenvio_a_Jr`,'' AS `F_Reenvio_2_a_Jr`,'' AS `F_Reenvio_3_a_Jr`,`slp6`.`Nombre_entidad` AS `Junta_Regional`,`sicje`.`F_radica_dictamen_jrci` AS `F_Radicado_Dictamen_JRCI`,`sicje`.`F_dictamen_jrci_emitido` AS `F_Dictamen_Junta`,`slp7`.`Nombre_parametro` AS `Origen_JR`,`sicje`.`Total_minusvalia` AS `Total_Minusvalia_`,`sicje`.`Total_minusvalia_jrci_emitido` AS `Total_Minusvalia_JR`,`sicje`.`Total_discapacidad_jrci_emitido` AS `Total_Discapacidad_JR`,`sicje`.`Total_deficiencia_jrci_emitido` AS `Total_deficiencia_jrci_emitido`,`sicje`.`Total_rol_ocupacional_jrci_emitido` AS `Total_Rol_Laboral_JR`,`sicje`.`Porcentaje_pcl_jrci_emitido` AS `Calificacion_Pcl_JR`,`sicje`.`F_estructuracion_contro_jrci_emitido` AS `F_Estructuracion_JR`,`sien1`.`Nombre_entidad` AS `Arl`,`sien2`.`Nombre_entidad` AS `Eps`,`sicje`.`F_acta_ejecutoria_emitida_jrci` AS `F_Sol_Constancia_EJE`,'NO ESTA DEFINIDO' AS `F_Recibido_Dictamen_JR`,`sicje`.`F_orden_pago_jnci` AS `F_Pago_JN`,`sicje`.`F_radi_pago_jnci` AS `F_Pago_JN_Radicado`,`sicje`.`F_envio_jnci` AS `F_Envio_JN`,`sicje`.`F_noti_ante_jnci` AS `F_Dictamen_JN`,`slp8`.`Nombre_parametro` AS `Origen_JN`,`sicje`.`Porcentaje_pcl_jnci_emitido` AS `Calificacion_Pcl_JN`,`sicje`.`F_estructuracion_contro_jnci_emitido` AS `F_Estructuracion_JN`,`siaev`.`Nombre_profesional` AS `Funcionario_Actual`,`slp9`.`Nombre_parametro` AS `Estado`,`sia`.`Accion` AS `Estado_Actual`,`sia`.`Descripcion_accion` AS `Observacion`,`siaev`.`F_registro` AS `Fecha_Asignar_Profesional`,`sicje`.`F_sustenta_jrci` AS `F_Acuerdo_Concepto`,`sicje`.`F_notificacion_recurso_jrci` AS `F_Controversia`,'' AS `F_Notificacion_a_Alfa`,'' AS `F_Guia_Salida_Correspondencia_Afiliado`,'' AS `F_Guia_Salida_Correspondencia_JR`,'' AS `Ans_Dias`,'' AS `Ans_Estado`,'' AS `Observaciones`,'' AS `Corte`,'' AS `F_Pago_JR`,'' AS `F_Envio_Efectivo_JR`,`ult`.`F_accion` AS `Ultima_Fecha_Accion`,`ult`.`Descripcion` AS `Descripcion` from ((((((((((((((((((((((`sigmel_informacion_asignacion_eventos` `siaev` left join `sigmel_informacion_eventos` `sie` on((`sie`.`ID_evento` = `siaev`.`ID_evento`))) left join `sigmel_informacion_afiliado_eventos` `siae` on((`siaev`.`ID_evento` = `siae`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`siae`.`Tipo_documento` = `slp`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp1` on((`siae`.`Tipo_afiliado` = `slp1`.`Id_Parametro`))) left join `sigmel_informacion_controversia_juntas_eventos` `sicje` on((`siaev`.`Id_Asignacion` = `sicje`.`Id_Asignacion`))) left join `sigmel_lista_parametros` `slp2` on((`sicje`.`Parte_controvierte_califi` = `slp2`.`Id_Parametro`))) left join `sigmel_lista_procesos_servicios` `slps` on((`slps`.`Id_Servicio` = `siaev`.`Id_servicio`))) left join `sigmel_informacion_historial_accion_eventos` `ult` on(((`ult`.`ID_evento` = `siaev`.`ID_evento`) and (`ult`.`Id_servicio` = `siaev`.`Id_servicio`)))) left join `sigmel_lista_tipo_eventos` `slte` on((`sie`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_lista_parametros` `slp3` on((`sicje`.`Origen_controversia` = `slp3`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp4` on((`sicje`.`Primer_calificador` = `slp4`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp5` on((`sicje`.`Parte_controvierte_califi` = `slp5`.`Id_Parametro`))) left join `sigmel_informacion_entidades` `slp6` on((`sicje`.`Jrci_califi_invalidez` = `slp6`.`Id_Entidad`))) left join `sigmel_lista_parametros` `slp7` on((`sicje`.`Origen_jrci_emitido` = `slp7`.`Id_Parametro`))) left join `sigmel_informacion_afiliado_eventos` `sinae1` on((`siaev`.`ID_evento` = `sinae1`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien1` on((`sinae1`.`Id_arl` = `sien1`.`Id_Entidad`))) left join `sigmel_informacion_afiliado_eventos` `sinae2` on((`siaev`.`ID_evento` = `sinae2`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien2` on((`sinae2`.`Id_eps` = `sien2`.`Id_Entidad`))) left join `sigmel_lista_parametros` `slp8` on((`sicje`.`Origen_jnci_emitido` = `slp8`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp9` on((`siaev`.`Id_Estado_evento` = `slp9`.`Id_Parametro`))) left join `sigmel_informacion_acciones` `sia` on((`siaev`.`Id_accion` = `sia`.`Id_Accion`))) left join (select `subq`.`Id_Asignacion` AS `Id_Asignacion`,max((case when (`subq`.`rn` = 1) then concat_ws(' ',`subq`.`CIE10`,`subq`.`Descripcion_diagnostico`) end)) AS `Diagnostico_2`,max((case when (`subq`.`rn` = 2) then concat_ws(' ',`subq`.`CIE10`,`subq`.`Descripcion_diagnostico`) end)) AS `Diagnostico_3`,max((case when (`subq`.`rn` = 3) then concat_ws(' ',`subq`.`CIE10`,`subq`.`Descripcion_diagnostico`) end)) AS `Diagnostico_4`,max((case when (`subq`.`rn` = 4) then concat_ws(' ',`subq`.`CIE10`,`subq`.`Descripcion_diagnostico`) end)) AS `Diagnostico_5`,max((case when (`subq`.`rn` = 5) then concat_ws(' ',`subq`.`CIE10`,`subq`.`Descripcion_diagnostico`) end)) AS `Diagnostico_6` from (select `siaev1`.`Id_Asignacion` AS `Id_Asignacion`,`slcied`.`CIE10` AS `CIE10`,`slcied`.`Descripcion_diagnostico` AS `Descripcion_diagnostico`,row_number() OVER (PARTITION BY `siaev1`.`Id_Asignacion` ORDER BY `sidev`.`Id_Diagnosticos_motcali` )  AS `rn` from ((`sigmel_informacion_asignacion_eventos` `siaev1` left join `sigmel_informacion_diagnosticos_eventos` `sidev` on((`siaev1`.`Id_Asignacion` = `sidev`.`Id_Asignacion`))) left join `sigmel_lista_cie_diagnosticos` `slcied` on((`sidev`.`CIE10` = `slcied`.`Id_Cie_diagnostico`))) where ((`siaev1`.`Id_proceso` = 3) and (`sidev`.`Principal` = 'No'))) `subq` group by `subq`.`Id_Asignacion`) `diagnosticos` on((`diagnosticos`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) where (`siaev`.`Id_proceso` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_facturacion_juntas_s`
--

/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_juntas_s`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_facturacion_juntas_s` AS select `siae`.`ID_evento` AS `ID_evento`,`siae`.`Id_proceso` AS `Id_proceso`,`siae`.`Id_Asignacion` AS `Id_Asignacion`,`siae`.`Id_servicio` AS `Id_servicio`,coalesce(`sicje`.`N_siniestro`,0) AS `Nro_Siniestro`,(select distinct `slp`.`Nombre_parametro` from (`sigmel_informacion_afiliado_eventos` `siaev` left join `sigmel_lista_parametros` `slp` on((`siaev`.`Tipo_documento` = `slp`.`Id_Parametro`))) where (`siaev`.`ID_evento` = `siae`.`ID_evento`)) AS `Tipo_Documento`,(select distinct `siaev1`.`Nro_identificacion` from `sigmel_informacion_afiliado_eventos` `siaev1` where (`siaev1`.`ID_evento` = `siae`.`ID_evento`)) AS `Identificacion`,(case when (`slp`.`Nombre_parametro` in ('Cotizante','Subsidiado','Pensionado','Otro/ ¿Cuál?')) then `siafe`.`Nombre_afiliado` when (`slp`.`Nombre_parametro` = 'Beneficiario') then `siafe`.`Nombre_afiliado_benefi` end) AS `Nombre`,(case when (`slp`.`Nombre_parametro` = 'Cotizante') then 'Cotizante' when (`slp`.`Nombre_parametro` = 'Beneficiario') then 'Beneficiario' when (`slp`.`Nombre_parametro` = 'Subsidiado') then 'Subsidiado' when (`slp`.`Nombre_parametro` = 'Pensionado') then 'Pensionado' when (`slp`.`Nombre_parametro` = 'Otro/ ¿Cuál?') then (select `slp8`.`Nombre_parametro` from `sigmel_lista_parametros` `slp8` where (`siafe`.`Tipo_afiliado` = `slp8`.`Id_Parametro`)) end) AS `Tipo_Afiliado`,coalesce(`sicje`.`F_notifi_afiliado`,'') AS `Fecha_Notificacion_Afiliado`,coalesce(`sicje`.`F_contro_radi_califi`,'') AS `Fecha_Controversia_Afiliado`,coalesce(`sicje`.`F_plazo_controversia`,'') AS `Fecha_Plazo_Afiliado`,coalesce(`siae`.`Nueva_F_radicacion`,`siae`.`F_radicacion`) AS `Fecha_Radicacion`,'' AS `Fecha_Pago_Honorarios_JR`,coalesce(`slp2`.`Nombre_parametro`,'') AS `Fuente_Informacion`,(case when (`siae`.`Id_servicio` = 12) then 'ORIGEN' when (`siae`.`Id_servicio` = 13) then 'PCL' end) AS `Tipo_Evento`,(case when ((`sicje`.`Contro_origen` is not null) and (`sicje`.`Contro_origen` <> '')) then 'Origen' else '' end) AS `Tipo_Controversia1`,(case when ((`sicje`.`Contro_pcl` is not null) and (`sicje`.`Contro_pcl` <> '')) then 'Porcentaje' else '' end) AS `Tipo_Controversia2`,(case when ((`sicje`.`Contro_f_estructura` is not null) and (`sicje`.`Contro_f_estructura` <> '')) then 'Fecha estructuración' else '' end) AS `Tipo_Controversia3`,(case when ((`sicje`.`Contro_m_califi` is not null) and (`sicje`.`Contro_m_califi` <> '')) then 'Manual' else '' end) AS `Tipo_Controversia4`,(case when ((`sicje`.`Contro_diagnostico` is not null) and (`sicje`.`Contro_diagnostico` <> '')) then 'Diagnósticos' else '' end) AS `Tipo_Controversia5`,(case when ((`diagnosticos`.`Cie10_1` is not null) and (`diagnosticos`.`Cie10_1` <> '')) then concat(`diagnosticos`.`Cie10_1`,' ',`diagnosticos`.`Diagnostico_1`) else '' end) AS `Dx_Principal`,(case when ((`diagnosticos`.`Cie10_2` is not null) and (`diagnosticos`.`Cie10_2` <> '')) then concat(`diagnosticos`.`Cie10_2`,' ',`diagnosticos`.`Diagnostico_2`) else '' end) AS `Diagnostico2`,(case when ((`diagnosticos`.`Cie10_3` is not null) and (`diagnosticos`.`Cie10_3` <> '')) then concat(`diagnosticos`.`Cie10_3`,' ',`diagnosticos`.`Diagnostico_3`) else '' end) AS `Diagnostico3`,(case when ((`diagnosticos`.`Cie10_4` is not null) and (`diagnosticos`.`Cie10_4` <> '')) then concat(`diagnosticos`.`Cie10_4`,' ',`diagnosticos`.`Diagnostico_4`) else '' end) AS `Diagnostico4`,(case when ((`diagnosticos`.`Cie10_5` is not null) and (`diagnosticos`.`Cie10_5` <> '')) then concat(`diagnosticos`.`Cie10_5`,' ',`diagnosticos`.`Diagnostico_5`) else '' end) AS `Diagnostico5`,(case when ((`diagnosticos`.`Cie10_6` is not null) and (`diagnosticos`.`Cie10_6` <> '')) then concat(`diagnosticos`.`Cie10_6`,' ',`diagnosticos`.`Diagnostico_6`) else '' end) AS `Diagnostico6`,coalesce(`slte`.`Nombre_evento`,'') AS `Accidente_Enfermedad`,(case when ((`sicje`.`Origen_controversia` is not null) and (`sicje`.`Origen_controversia` <> '')) then `slp3`.`Nombre_parametro` else '' end) AS `Origen_1A_Oportunidad`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(format(`sicje`.`Porcentaje_pcl`,2) using utf8mb4),'') else '0' end) AS `Calificacion_Pcl`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(date_format(`sicje`.`F_estructuracion_contro`,'%d/%m/%Y') using utf8mb4),'') else '0' end) AS `Fecha_Estructuracion`,(case when ((`sicje`.`Nom_entidad` is not null) and (`sicje`.`Nom_entidad` <> '')) then concat(`slp4`.`Nombre_parametro`,' ',`sicje`.`Nom_entidad`) else '' end) AS `Entidad_Califica_1A_Opo`,coalesce(`slp5`.`Nombre_parametro`,'') AS `Parte_Interpone_Recurso`,coalesce((select `siphe`.`F_pago_honorarios` from `sigmel_informacion_pagos_honorarios_eventos` `siphe` where ((`siphe`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`siphe`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`) and (`siphe`.`Id_proceso` = `siacce`.`Aud_Id_proceso`)) order by `siphe`.`F_registro` desc limit 1),'') AS `Fecha_Pago_Jr`,coalesce((select `siphe`.`F_pago_radicacion` from `sigmel_informacion_pagos_honorarios_eventos` `siphe` where ((`siphe`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`siphe`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`) and (`siphe`.`Id_proceso` = `siacce`.`Aud_Id_proceso`)) order by `siphe`.`F_registro` desc limit 1),'') AS `Fecha_Pago_Jr_Radicado`,(case when (`siacce`.`Aud_Accion` = 130) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) else '' end) AS `Fecha_Envio_A_Jr`,'' AS `Guia_Junta`,'' AS `Guia_Afiliado`,'' AS `Guia_Rta_Junta_Regional`,(case when (`siacce`.`Aud_Accion` = 162) then (select convert(date_format(`sihae`.`F_accion`,'%d/%m/%Y') using utf8mb4) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`sihae`.`Id_proceso` = `siacce`.`Aud_Id_proceso`) and (`sihae`.`Id_accion` = `siacce`.`Aud_Accion`) and (`sihae`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`)) order by `sihae`.`ID_evento` limit 1) else '' end) AS `Fecha_Reenvio_A_Jr`,(case when (`siacce`.`Aud_Accion` = 163) then (select convert(date_format(`sihae`.`F_accion`,'%d/%m/%Y') using utf8mb4) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`sihae`.`Id_proceso` = `siacce`.`Aud_Id_proceso`) and (`sihae`.`Id_accion` = `siacce`.`Aud_Accion`) and (`sihae`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`)) order by `sihae`.`ID_evento` limit 1) else '' end) AS `Fecha_Reenvio_2_A_Jr`,(case when (`siacce`.`Aud_Accion` = 164) then (select convert(date_format(`sihae`.`F_accion`,'%d/%m/%Y') using utf8mb4) from `sigmel_informacion_historial_accion_eventos` `sihae` where ((`sihae`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`sihae`.`Id_proceso` = `siacce`.`Aud_Id_proceso`) and (`sihae`.`Id_accion` = `siacce`.`Aud_Accion`) and (`sihae`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`)) order by `sihae`.`ID_evento` limit 1) else '' end) AS `Fecha_Reenvio_3_A_Jr`,coalesce(`sien`.`Nombre_entidad`,'') AS `Junta_Regional`,coalesce(`sicje`.`F_radica_dictamen_jrci`,'') AS `Fecha_Radicado_Dictamen_Jr`,coalesce(`sicje`.`F_dictamen_jrci_emitido`,'') AS `Fecha_Dictamen_Junta`,(case when ((`sicje`.`Origen_jrci_emitido` is not null) and (`sicje`.`Origen_jrci_emitido` <> '')) then `slp6`.`Nombre_parametro` else '' end) AS `Origen_Jr`,(case when (`siae`.`Id_servicio` = 13) then (case when (`sicje`.`Manual_de_califi_jrci_emitido` = 3) then convert(format(`sicje`.`Total_minusvalia_jrci_emitido`,2) using utf8mb4) else '' end) else '' end) AS `Total_Minusvalia_Jr`,(case when (`siae`.`Id_servicio` = 13) then (case when (`sicje`.`Manual_de_califi_jrci_emitido` = 3) then convert(format(`sicje`.`Total_discapacidad_jrci_emitido`,2) using utf8mb4) else '' end) else '' end) AS `Total_Discapacidad_Jr`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(format(`sicje`.`Total_deficiencia_jrci_emitido`,2) using utf8mb4),'') else '' end) AS `Total_Deficiencia_Jr`,(case when (`siae`.`Id_servicio` = 13) then (case when (`sicje`.`Manual_de_califi_jrci_emitido` = 1) then convert(format(`sicje`.`Total_rol_ocupacional_jrci_emitido`,2) using utf8mb4) else '' end) else '' end) AS `Total_Rol_Laboral_Jr`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(format(`sicje`.`Porcentaje_pcl_jrci_emitido`,2) using utf8mb4),'') else '0' end) AS `Calificacion_Pcl_Jr`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(date_format(`sicje`.`F_estructuracion_contro_jrci_emitido`,'%d/%m/%Y') using utf8mb4),'') else '0' end) AS `Fecha_Estructuracion_Jr`,`sien1`.`Nombre_entidad` AS `ARL`,`sien2`.`Nombre_entidad` AS `EPS`,coalesce(`sicje`.`F_acta_ejecutoria_emitida_jrci`,'') AS `Fecha_Sol_Constancia_Eje`,'' AS `Fecha_Recibido_Dictamen_Jr`,coalesce(`sicje`.`F_orden_pago_jnci`,'') AS `Fecha_Pago_Jn`,coalesce(`sicje`.`F_radi_pago_jnci`,'') AS `Fecha_Pago_Jn_Radicado`,coalesce(`sicje`.`F_envio_jnci`,'') AS `Fecha_Envio_A_Jn`,coalesce(`sicje`.`F_dictamen_jnci_emitido`,'') AS `Fecha_Dictamen_Jn`,(case when ((`sicje`.`Origen_jnci_emitido` is not null) and (`sicje`.`Origen_jnci_emitido` <> '')) then `slp7`.`Nombre_parametro` else '' end) AS `Origen_Jn`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(format(`sicje`.`Porcentaje_pcl_jnci_emitido`,2) using utf8mb4),'') else '' end) AS `Calificacion_Pcl_Jn`,(case when (`siae`.`Id_servicio` = 13) then coalesce(convert(date_format(`sicje`.`F_estructuracion_contro_jnci_emitido`,'%d/%m/%Y') using utf8mb4),'') else '' end) AS `Fecha_Estructuracion_Jn`,'' AS `Funcionario_Actual`,(case when (`siacce`.`Aud_Accion` in (130,162,163,164,134,169,144,145)) then `siacce`.`Aud_Nombre_usuario` when (`siacce`.`Aud_Accion` = 148) then `siae`.`Nombre_calificador` else '' end) AS `Funcionario_Ultima_Accion`,coalesce(`siacce`.`Aud_Estado_Facturacion`,'') AS `Estado`,'' AS `Observacion_1`,(case when (`siacce`.`Aud_Accion` = 155) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) else '' end) AS `Fecha_Asignar_Profesional`,(case when (`siacce`.`Aud_Accion` = 144) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) else '' end) AS `Fecha_Acuerdo`,(case when (`siacce`.`Aud_Accion` = 148) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) else '' end) AS `Fecha_Controversia`,'' AS `Fecha_De_Notificacion_A_Alfa`,'' AS `Fecha_Guia_De_Salida_Correspondencia_Afiliado`,'' AS `Fecha_Guia_De_Salida_Correspondencia_Jr`,'' AS `Ans_Dias`,'' AS `Ans_Estado`,'' AS `Observacion_2`,'' AS `Corte`,'' AS `Fecha_Pago_Jr_blanco`,'' AS `Fecha_Envio_Efectvio_A_La_Jr`,`siacce`.`Aud_F_accion` AS `F_accion` from ((((((((((((((((`sigmel_informacion_asignacion_eventos` `siae` left join `sigmel_auditorias`.`sigmel_auditorias_informacion_accion_eventos` `siacce` on(((`siae`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`siae`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`) and (`siae`.`Id_proceso` = `siacce`.`Aud_Id_proceso`)))) left join `sigmel_informacion_controversia_juntas_eventos` `sicje` on(((`siae`.`ID_evento` = `sicje`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sicje`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sicje`.`Id_proceso`)))) left join `sigmel_informacion_afiliado_eventos` `siafe` on((`siae`.`ID_evento` = `siafe`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`siafe`.`Tipo_afiliado` = `slp`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp2` on((`siacce`.`Aud_Fuente_informacion` = `slp2`.`Id_Parametro`))) left join (select `subq`.`Id_Asignacion` AS `Id_Asignacion`,`subq`.`ID_evento` AS `ID_evento`,`subq`.`Id_proceso` AS `Id_proceso`,max((case when (`subq`.`rn` = 1) then `subq`.`CIE10` end)) AS `Cie10_1`,max((case when (`subq`.`rn` = 1) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_1`,max((case when (`subq`.`rn` = 2) then `subq`.`CIE10` end)) AS `Cie10_2`,max((case when (`subq`.`rn` = 2) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_2`,max((case when (`subq`.`rn` = 3) then `subq`.`CIE10` end)) AS `Cie10_3`,max((case when (`subq`.`rn` = 3) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_3`,max((case when (`subq`.`rn` = 4) then `subq`.`CIE10` end)) AS `Cie10_4`,max((case when (`subq`.`rn` = 4) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_4`,max((case when (`subq`.`rn` = 5) then `subq`.`CIE10` end)) AS `Cie10_5`,max((case when (`subq`.`rn` = 5) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_5`,max((case when (`subq`.`rn` = 6) then `subq`.`CIE10` end)) AS `Cie10_6`,max((case when (`subq`.`rn` = 6) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_6` from (select `siae1`.`Id_Asignacion` AS `Id_Asignacion`,`siae1`.`ID_evento` AS `ID_evento`,`siae1`.`Id_proceso` AS `Id_proceso`,`slcied`.`CIE10` AS `CIE10`,`slcied`.`Descripcion_diagnostico` AS `Descripcion_diagnostico`,row_number() OVER (PARTITION BY `siae1`.`Id_Asignacion` ORDER BY `sidev`.`Id_Diagnosticos_motcali` )  AS `rn` from ((`sigmel_informacion_asignacion_eventos` `siae1` left join `sigmel_informacion_diagnosticos_eventos` `sidev` on((`siae1`.`Id_Asignacion` = `sidev`.`Id_Asignacion`))) left join `sigmel_lista_cie_diagnosticos` `slcied` on((`sidev`.`CIE10` = `slcied`.`Id_Cie_diagnostico`))) where (`sidev`.`Estado` = 'Activo')) `subq` group by `subq`.`Id_Asignacion`) `diagnosticos` on(((`diagnosticos`.`Id_Asignacion` = `siae`.`Id_Asignacion`) and (`diagnosticos`.`ID_evento` = `siae`.`ID_evento`) and (`diagnosticos`.`Id_proceso` = `siae`.`Id_proceso`)))) left join `sigmel_informacion_eventos` `sie` on((`siae`.`ID_evento` = `sie`.`ID_evento`))) left join `sigmel_lista_tipo_eventos` `slte` on((`sie`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_lista_parametros` `slp3` on((`sicje`.`Origen_controversia` = `slp3`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp4` on((`sicje`.`Primer_calificador` = `slp4`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp5` on((`sicje`.`Parte_controvierte_califi` = `slp5`.`Id_Parametro`))) left join `sigmel_informacion_entidades` `sien` on((`sien`.`Id_Entidad` = `sicje`.`Jrci_califi_invalidez`))) left join `sigmel_lista_parametros` `slp6` on((`sicje`.`Origen_jrci_emitido` = `slp6`.`Id_Parametro`))) left join `sigmel_informacion_entidades` `sien1` on((`siafe`.`Id_arl` = `sien1`.`Id_Entidad`))) left join `sigmel_informacion_entidades` `sien2` on((`siafe`.`Id_eps` = `sien2`.`Id_Entidad`))) left join `sigmel_lista_parametros` `slp7` on((`sicje`.`Origen_jnci_emitido` = `slp7`.`Id_Parametro`))) where ((`siacce`.`Aud_Estado_Facturacion` is not null) and (`siae`.`Id_proceso` = 3) and (`siae`.`Id_servicio` in (12,13))) group by `siacce`.`Aud_F_accion` order by `siacce`.`Aud_F_accion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_facturacion_pcl`
--

/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_pcl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_facturacion_pcl` AS select `slps`.`Nombre_servicio` AS `Servicio`,`slp`.`Nombre_parametro` AS `Tipo_de_Afiliado`,`sie`.`F_radicacion` AS `F_Radicacion_a_CODESS`,`sie`.`ID_evento` AS `Nro_Siniestro`,`siae`.`Nro_identificacion` AS `Documento`,`siae`.`Nombre_afiliado` AS `Nombre_afiliado`,(select `sidse`.`F_solicitud_documento` from `sigmel_informacion_documentos_solicitados_eventos` `sidse` where (`sidse`.`ID_evento` = `siaev`.`ID_evento`) limit 1) AS `F_Solicitud_Documentos`,`comi`.`F_visado_comite` AS `F_Dictamen`,`sille`.`Total_minusvalia` AS `Total_minusvalia`,`sille`.`Total_discapacidad` AS `Total_discapacidad`,`side`.`Total_Deficiencia50` AS `Total_Deficiencia`,`silae`.`Total_laboral_otras_areas` AS `Total_Rol_Laboral`,(case when ((`siroe`.`Total_criterios_desarrollo` is not null) and (`siroe`.`Total_rol_estudio_clase` is null) and (`siroe`.`Total_rol_adultos_ayores` is null)) then `siroe`.`Total_criterios_desarrollo` when ((`siroe`.`Total_criterios_desarrollo` is not null) and (`siroe`.`Total_rol_estudio_clase` = 0) and (`siroe`.`Total_rol_adultos_ayores` = 0)) then `siroe`.`Total_criterios_desarrollo` when ((`siroe`.`Total_rol_estudio_clase` is not null) and (`siroe`.`Total_criterios_desarrollo` is null) and (`siroe`.`Total_rol_adultos_ayores` is null)) then `siroe`.`Total_rol_estudio_clase` when ((`siroe`.`Total_rol_estudio_clase` is not null) and (`siroe`.`Total_criterios_desarrollo` = 0) and (`siroe`.`Total_rol_adultos_ayores` = 0)) then `siroe`.`Total_rol_estudio_clase` when ((`siroe`.`Total_rol_adultos_ayores` is not null) and (`siroe`.`Total_criterios_desarrollo` is null) and (`siroe`.`Total_rol_estudio_clase` is null)) then `siroe`.`Total_rol_adultos_ayores` when ((`siroe`.`Total_rol_adultos_ayores` is not null) and (`siroe`.`Total_criterios_desarrollo` = 0) and (`siroe`.`Total_rol_estudio_clase` = 0)) then `siroe`.`Total_rol_adultos_ayores` else 'N/A' end) AS `Total_Rol_Ocupacional`,`side`.`F_estructuracion` AS `F_estructuracion`,`side`.`Porcentaje_pcl` AS `Calificacion`,`slp2`.`Nombre_parametro` AS `Origen`,`slte`.`Nombre_evento` AS `Tipo_Evento`,`slcd`.`Nombre_decreto` AS `Calificado_Con`,`slp3`.`Nombre_parametro` AS `Estado`,`sia`.`Accion` AS `Accion`,`diagnosticos`.`Cie10_1` AS `Cie10_1`,`diagnosticos`.`Diagnostico_1` AS `Diagnostico_1`,`diagnosticos`.`Cie10_2` AS `Cie10_2`,`diagnosticos`.`Diagnostico_2` AS `Diagnostico_2`,`diagnosticos`.`Cie10_3` AS `Cie10_3`,`diagnosticos`.`Diagnostico_3` AS `Diagnostico_3`,`diagnosticos`.`Cie10_4` AS `Cie10_4`,`diagnosticos`.`Diagnostico_4` AS `Diagnostico_4`,`diagnosticos`.`Cie10_5` AS `Cie10_5`,`diagnosticos`.`Diagnostico_5` AS `Diagnostico_5`,`diagnosticos`.`Cie10_6` AS `Cie10_6`,`diagnosticos`.`Diagnostico_6` AS `Diagnostico_6`,`side`.`Requiere_tercera_persona` AS `Requiere_Ayuda_Tercero`,`side`.`Requiere_tercera_persona_decisiones` AS `Requiere_Tercero_Toma_Decisiones`,`side`.`Requiere_dispositivo_apoyo` AS `Requiere_dispositivo_apoyo`,'NO ESTA DEFINIDO' AS `Requiere_revision_pension`,`sile`.`Empresa` AS `Empresa`,`sien1`.`Nombre_entidad` AS `Arl`,`sien2`.`Nombre_entidad` AS `Eps`,'NO ESTA DEFINIDO' AS `Guia_Afiliado`,'NO ESTA DEFINIDO' AS `Guia_Eps`,'NO ESTA DEFINIDO' AS `Guia_Afp`,'NO ESTA DEFINIDO' AS `Guia_Empleador`,'NO ESTA DEFINIDO' AS `Guia_Arl`,'NO ESTA DEFINIDO' AS `Nombre_Departamento`,'NO ESTA DEFINIDO' AS `F_Correspondencia`,'' AS `F_Notificacion_a_Alfa`,`siaev`.`Nombre_profesional` AS `Calificador`,'' AS `Ans_Dias`,'' AS `Ans_Estado`,'' AS `Observaciones`,'' AS `Tipo_de_Servicio`,'' AS `Tipo_de_Envio`,'' AS `Corte`,'' AS `Entidad_que_permite_dictamen`,'' AS `Porcentaje_Deficiencia`,`ult`.`F_accion` AS `Ultima_Fecha_Accion`,`ult`.`Descripcion` AS `Descripcion` from (((((((((((((((((((((`sigmel_informacion_asignacion_eventos` `siaev` left join `sigmel_lista_procesos_servicios` `slps` on((`siaev`.`Id_servicio` = `slps`.`Id_Servicio`))) left join `sigmel_informacion_historial_accion_eventos` `ult` on(((`ult`.`ID_evento` = `siaev`.`ID_evento`) and (`ult`.`Id_servicio` = `siaev`.`Id_servicio`)))) left join `sigmel_informacion_comite_interdisciplinario_eventos` `comi` on(((`comi`.`ID_evento` = `siaev`.`ID_evento`) and (`comi`.`Id_Asignacion` = `siaev`.`Id_Asignacion`)))) left join `sigmel_informacion_afiliado_eventos` `siae` on((`siaev`.`ID_evento` = `siae`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`siae`.`Tipo_afiliado` = `slp`.`Id_Parametro`))) left join `sigmel_informacion_eventos` `sie` on((`sie`.`ID_evento` = `siaev`.`ID_evento`))) left join `sigmel_informacion_libro2_libro3_eventos` `sille` on((`siaev`.`Id_Asignacion` = `sille`.`Id_Asignacion`))) left join `sigmel_informacion_decreto_eventos` `side` on((`siaev`.`Id_Asignacion` = `side`.`Id_Asignacion`))) left join `sigmel_informacion_laboralmente_activo_eventos` `silae` on((`siaev`.`Id_Asignacion` = `silae`.`Id_Asignacion`))) left join `sigmel_informacion_rol_ocupacional_eventos` `siroe` on((`siaev`.`Id_Asignacion` = `siroe`.`Id_Asignacion`))) left join `sigmel_lista_parametros` `slp2` on((`side`.`Origen` = `slp2`.`Id_Parametro`))) left join `sigmel_lista_tipo_eventos` `slte` on((`sie`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_lista_califi_decretos` `slcd` on((`side`.`Decreto_calificacion` = `slcd`.`Id_Decreto`))) left join `sigmel_lista_parametros` `slp3` on((`siaev`.`Id_Estado_evento` = `slp3`.`Id_Parametro`))) left join `sigmel_informacion_acciones` `sia` on((`siaev`.`Id_accion` = `sia`.`Id_Accion`))) left join `sigmel_informacion_laboral_eventos` `sile` on((`siaev`.`ID_evento` = `sile`.`ID_evento`))) left join `sigmel_informacion_afiliado_eventos` `sinae1` on((`siaev`.`ID_evento` = `sinae1`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien1` on((`sinae1`.`Id_arl` = `sien1`.`Id_Entidad`))) left join `sigmel_informacion_afiliado_eventos` `sinae2` on((`siaev`.`ID_evento` = `sinae2`.`ID_evento`))) left join `sigmel_informacion_entidades` `sien2` on((`sinae2`.`Id_eps` = `sien2`.`Id_Entidad`))) left join (select `subq`.`Id_Asignacion` AS `Id_Asignacion`,max((case when (`subq`.`rn` = 1) then `subq`.`CIE10` end)) AS `Cie10_1`,max((case when (`subq`.`rn` = 1) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_1`,max((case when (`subq`.`rn` = 2) then `subq`.`CIE10` end)) AS `Cie10_2`,max((case when (`subq`.`rn` = 2) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_2`,max((case when (`subq`.`rn` = 3) then `subq`.`CIE10` end)) AS `Cie10_3`,max((case when (`subq`.`rn` = 3) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_3`,max((case when (`subq`.`rn` = 4) then `subq`.`CIE10` end)) AS `Cie10_4`,max((case when (`subq`.`rn` = 4) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_4`,max((case when (`subq`.`rn` = 5) then `subq`.`CIE10` end)) AS `Cie10_5`,max((case when (`subq`.`rn` = 5) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_5`,max((case when (`subq`.`rn` = 6) then `subq`.`CIE10` end)) AS `Cie10_6`,max((case when (`subq`.`rn` = 6) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_6` from (select `siaev1`.`Id_Asignacion` AS `Id_Asignacion`,`slcied`.`CIE10` AS `CIE10`,`slcied`.`Descripcion_diagnostico` AS `Descripcion_diagnostico`,row_number() OVER (PARTITION BY `siaev1`.`Id_Asignacion` ORDER BY `sidev`.`Id_Diagnosticos_motcali` )  AS `rn` from ((`sigmel_informacion_asignacion_eventos` `siaev1` left join `sigmel_informacion_diagnosticos_eventos` `sidev` on((`siaev1`.`Id_Asignacion` = `sidev`.`Id_Asignacion`))) left join `sigmel_lista_cie_diagnosticos` `slcied` on((`sidev`.`CIE10` = `slcied`.`Id_Cie_diagnostico`))) where (`siaev1`.`Id_proceso` = 2)) `subq` group by `subq`.`Id_Asignacion`) `diagnosticos` on((`diagnosticos`.`Id_Asignacion` = `siaev`.`Id_Asignacion`))) where (`siaev`.`Id_proceso` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporte_facturacion_pcls`
--

/*!50001 DROP VIEW IF EXISTS `reporte_facturacion_pcls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`developer`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_facturacion_pcls` AS select `siae`.`ID_evento` AS `ID_evento`,`siae`.`Id_proceso` AS `Id_proceso`,`siae`.`Id_Asignacion` AS `Id_Asignacion`,`siae`.`Id_servicio` AS `Id_servicio`,(case when (`siae`.`Id_servicio` = 1) then 'CALIFICACIÓN DE ORIGEN AT' when (`siae`.`Id_servicio` = 3) then upper(concat(`slps`.`Nombre_servicio`,' Origen')) when (`siae`.`Id_servicio` = 9) then upper(concat(`slps`.`Nombre_servicio`,' PCL')) when (`siae`.`Id_servicio` in (6,7)) then 'PCL' else upper(`slps`.`Nombre_servicio`) end) AS `Nombre_Servicio`,`slp`.`Nombre_parametro` AS `Tipo_Afiliado`,coalesce(`siae`.`Nueva_F_radicacion`,`siae`.`F_radicacion`) AS `Fecha_Radicacion_A_Codess`,(case when (`siae`.`Id_servicio` = 1) then coalesce(`sidae`.`N_siniestro`,0) when (`siae`.`Id_servicio` = 2) then coalesce(`siade`.`N_siniestro`,0) when (`siae`.`Id_servicio` in (3,9)) then coalesce(`sipe`.`N_siniestro`,0) when (`siae`.`Id_servicio` = 6) then coalesce(`side`.`N_siniestro`,0) when (`siae`.`Id_servicio` = 7) then coalesce(`side`.`N_siniestro`,0) when (`siae`.`Id_servicio` = 8) then coalesce(`side`.`N_siniestro`,0) else 0 end) AS `Nro_Siniestro`,(select distinct `siaev`.`Nro_identificacion` from `sigmel_informacion_afiliado_eventos` `siaev` where (`siaev`.`ID_evento` = `siae`.`ID_evento`)) AS `Documento`,(case when (`slp`.`Nombre_parametro` in ('Cotizante','Subsidiado','Pensionado','Otro/ ¿Cuál?')) then `siafe`.`Nombre_afiliado` when (`slp`.`Nombre_parametro` = 'Beneficiario') then `siafe`.`Nombre_afiliado` end) AS `Nombre`,(case when (`siacce`.`Aud_Accion` in (134,136)) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) else '' end) AS `Fecha_Solicitud_Documentos`,(case when (`siacce`.`Aud_Accion` not in (134,136)) then (case when (`siae`.`Id_servicio` = 1) then (case when (`siacce`.`Aud_Accion` = 141) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) end) when (`siae`.`Id_servicio` in (3,9)) then (case when (`siacce`.`Aud_Accion` in (144,148,145)) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) end) when (`siae`.`Id_servicio` = 6) then (case when (`siacce`.`Aud_Accion` in (142,143,175,176,173)) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) end) when (`siae`.`Id_servicio` = 7) then (case when (`siacce`.`Aud_Accion` in (142,143,175,176,149)) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) end) when (`siae`.`Id_servicio` = 8) then (case when (`siacce`.`Aud_Accion` in (150,151,152,153,154)) then convert(date_format(`siacce`.`Aud_F_accion`,'%d/%m/%Y') using utf8mb4) end) end) else '' end) AS `Fecha_Dictamen`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else convert((case when (`side`.`Decreto_calificacion` = 3) then (select format(`sille`.`Total_minusvalia`,2) from `sigmel_informacion_libro2_libro3_eventos` `sille` where ((`siae`.`ID_evento` = `sille`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sille`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sille`.`Id_proceso`))) else 0 end) using utf8mb4) end) else 'N/A' end) AS `Total_Minusvalia`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else convert((case when (`side`.`Decreto_calificacion` = 3) then (select format(`sille`.`Total_discapacidad`,2) from `sigmel_informacion_libro2_libro3_eventos` `sille` where ((`siae`.`ID_evento` = `sille`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sille`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sille`.`Id_proceso`))) else 0 end) using utf8mb4) end) else 'N/A' end) AS `Total_Discapacidad`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` = 'OFICIO DE NO RECALIFICACIÓN') then 0 when (`siacce`.`Aud_Estado_Facturacion` = 'SOLICITUD DE DOCUMENTOS') then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then '' else (case when (`side`.`Decreto_calificacion` = 2) then '0.00' when (`side`.`Decreto_calificacion` in (1,3)) then convert(coalesce(format(`side`.`Total_Deficiencia50`,2),0) using utf8mb4) else 0 end) end) end) else 'N/A' end) AS `Total_Deficiencia`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` = 'OFICIO DE NO RECALIFICACIÓN') then 0 when (`siacce`.`Aud_Estado_Facturacion` = 'SOLICITUD DE DOCUMENTOS') then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then '' else (case when (`side`.`Decreto_calificacion` = 1) then convert((case when ((`silae`.`Total_laboral_otras_areas` <> '') and (`siroe`.`Total_rol_estudio_clase` is null) and (`siroe`.`Total_rol_adultos_ayores` is null) and (`siroe`.`Total_criterios_desarrollo` is null)) then coalesce(format(`silae`.`Total_laboral_otras_areas`,2),0) when (`silae`.`Total_laboral_otras_areas` is null) then (case when (`siroe`.`Total_criterios_desarrollo` <> '') then coalesce(format(`siroe`.`Total_criterios_desarrollo`,2),0) when (`siroe`.`Total_rol_estudio_clase` <> '') then coalesce(format(`siroe`.`Total_rol_estudio_clase`,2),0) when (`siroe`.`Total_rol_adultos_ayores` <> '') then coalesce(format(`siroe`.`Total_rol_adultos_ayores`,2),0) end) end) using utf8mb4) when (`side`.`Decreto_calificacion` = 2) then '0.00' when (`side`.`Decreto_calificacion` = 3) then 'N/A' else 0 end) end) end) else 'N/A' end) AS `Total_Rol_Laboral`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then '' else coalesce(convert(date_format(`side`.`F_estructuracion`,'%d/%m/%Y') using utf8mb4),'') end) end) when (`siae`.`Id_servicio` = 9) then coalesce(convert(date_format(`sipe`.`Fecha_estruturacion`,'%d/%m/%Y') using utf8mb4),'') else 'N/A' end) AS `Fecha_Estructuracion`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then '' else (case when (`side`.`Decreto_calificacion` = 2) then '0.00' else coalesce(convert(format(`side`.`Porcentaje_pcl`,2) using utf8mb4),'N/A') end) end) end) when (`siae`.`Id_servicio` = 9) then coalesce(convert(format(`sipe`.`Porcentaje_pcl`,2) using utf8mb4),'N/A') else 'N/A' end) AS `Calificacion`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when (`siae`.`Id_servicio` = 1) then coalesce(`slp2`.`Nombre_parametro`,'N/A') when (`siae`.`Id_servicio` = 2) then coalesce(`slp3`.`Nombre_parametro`,'N/A') when (`siae`.`Id_servicio` in (3,9)) then coalesce(`slp4`.`Nombre_parametro`,'N/A') when (`siae`.`Id_servicio` in (6,7,8)) then coalesce(`slp5`.`Nombre_parametro`,'N/A') end) end) AS `Origen`,(case when (`siacce`.`Aud_Estado_Facturacion` = 'OFICIO DE NO RECALIFICACIÓN') then 0 when (`siacce`.`Aud_Estado_Facturacion` = 'SOLICITUD DE DOCUMENTOS') then 'N/A' else (case when (`siae`.`Id_servicio` = 1) then coalesce(`slte`.`Nombre_evento`,0) when (`siae`.`Id_servicio` = 2) then coalesce(`slte2`.`Nombre_evento`,0) when (`siae`.`Id_servicio` in (3,9)) then coalesce(`slte3`.`Nombre_evento`,0) when (`siae`.`Id_servicio` in (6,7,8)) then coalesce(`slte4`.`Nombre_evento`,0) end) end) AS `Tipo_Evento`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else coalesce(`slcd`.`Nombre_decreto`,0) end) else 'N/A' end) AS `Calificado_Con`,`siacce`.`Aud_Estado_Facturacion` AS `Estado`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_1`,0) end) end) AS `Cie10_1`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_1`,0) end) end) AS `Diagnostico_1`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_2`,0) end) end) AS `Cie10_2`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_2`,0) end) end) AS `Diagnostico_2`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_3`,0) end) end) AS `Cie10_3`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_3`,0) end) end) AS `Diagnostico_3`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_4`,0) end) end) AS `Cie10_4`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_4`,0) end) end) AS `Diagnostico_4`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_5`,0) end) end) AS `Cie10_5`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_5`,0) end) end) AS `Diagnostico_5`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Cie10_6`,0) end) end) AS `Cie10_6`,(case when (`siacce`.`Aud_Estado_Facturacion` in ('OFICIO DE NO RECALIFICACIÓN','SOLICITUD DE DOCUMENTOS')) then 'N/A' else (case when ((`siae`.`Id_servicio` in (6,7,8)) and (`side`.`Detalle_calificacion` = '')) then 0 else coalesce(`diagnosticos`.`Diagnostico_6`,0) end) end) AS `Diagnostico_6`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then 'N/A' else (case when (`side`.`Decreto_calificacion` = 2) then 'NO' else (case when ((`side`.`Requiere_tercera_persona` is not null) and (`side`.`Requiere_tercera_persona` <> '')) then 'SI' else 'NO' end) end) end) else 'N/A' end) AS `Requiere_Ayuda_Tercero`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then 'N/A' else (case when (`side`.`Decreto_calificacion` = 2) then 'NO' else (case when ((`side`.`Requiere_tercera_persona_decisiones` is not null) and (`side`.`Requiere_tercera_persona_decisiones` <> '')) then 'SI' else 'NO' end) end) end) else 'N/A' end) AS `Requiere_Tercero_Toma_Decisiones`,(case when (`siae`.`Id_servicio` in (6,7,8)) then (case when ((`siae`.`Id_servicio` in (6,7)) and (`side`.`Detalle_calificacion` = '')) then 'N/A' else (case when (`side`.`Decreto_calificacion` = 2) then 'NO' else (case when ((`side`.`Requiere_Revision_Pension` is not null) and (`side`.`Requiere_Revision_Pension` <> '')) then 'SI' else 'NO' end) end) end) else 'N/A' end) AS `Requiere_Revision_Pension`,(case when (`sile`.`Tipo_empleado` = 'Empleado actual') then `sile`.`Empresa` when (`sile`.`Tipo_empleado` = 'Independiente') then 'INDEPENDIENTE' when (`sile`.`Tipo_empleado` = 'Beneficiario') then 'BENEFICIARIO' else 'N/A' end) AS `Empleador`,`sie`.`Nombre_entidad` AS `ARL`,`sie1`.`Nombre_entidad` AS `EPS`,'' AS `Guia_Afiliado`,'' AS `Guia_Eps`,'' AS `Guia_Afp`,'' AS `Guia_Empleador`,'' AS `Guia_Arl`,concat(`sldm`.`Nombre_municipio`,' - ',`sldm`.`Nombre_departamento`) AS `Nombre_Departamento`,'' AS `Fecha_Correspondencia`,'' AS `Fecha_Notificacion_Alfa`,(case when (`siae`.`Id_servicio` = 1) then (case when (`siacce`.`Aud_Accion` = 141) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` = 134) then `siacce`.`Aud_Nombre_usuario` else '' end) when (`siae`.`Id_servicio` = 3) then (case when (`siacce`.`Aud_Accion` = 148) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` in (144,145)) then `siacce`.`Aud_Nombre_usuario` else '' end) when (`siae`.`Id_servicio` = 9) then (case when (`siacce`.`Aud_Accion` = 148) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` in (144,145)) then `siacce`.`Aud_Nombre_usuario` else '' end) when (`siae`.`Id_servicio` = 6) then (case when (`siacce`.`Aud_Accion` in (142,143,175,176)) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` in (173,134,136)) then `siacce`.`Aud_Nombre_usuario` else '' end) when (`siae`.`Id_servicio` = 7) then (case when (`siacce`.`Aud_Accion` in (142,143,175,176)) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` in (149,134,136)) then `siacce`.`Aud_Nombre_usuario` else '' end) when (`siae`.`Id_servicio` = 8) then (case when (`siacce`.`Aud_Accion` in (152,153,154)) then `siae`.`Nombre_calificador` when (`siacce`.`Aud_Accion` in (150,151,134,136)) then `siacce`.`Aud_Nombre_usuario` else '' end) end) AS `Calificador`,'' AS `Ans_Dias`,'' AS `Ans_Estado`,'' AS `Observaciones`,'' AS `Tipo_Servicio`,'' AS `Tipo_Envio`,'' AS `Corte`,(case when (`siae`.`Id_servicio` in (3,9)) then (case when ((`sipe`.`Id_nombre_calificador` is not null) and (`sipe`.`Id_nombre_calificador` <> '')) then `sie2`.`Nombre_entidad` else '' end) else '' end) AS `Entidad_Remite_Dictamen`,'' AS `Porcentaje_Deficiencia`,`siacce`.`Aud_F_accion` AS `F_accion` from ((((((((((((((((((((((((((`sigmel_informacion_asignacion_eventos` `siae` left join `sigmel_auditorias`.`sigmel_auditorias_informacion_accion_eventos` `siacce` on(((`siae`.`ID_evento` = `siacce`.`Aud_ID_evento`) and (`siae`.`Id_Asignacion` = `siacce`.`Aud_Id_Asignacion`) and (`siae`.`Id_proceso` = `siacce`.`Aud_Id_proceso`)))) left join `sigmel_lista_procesos_servicios` `slps` on((`siae`.`Id_servicio` = `slps`.`Id_Servicio`))) left join `sigmel_informacion_afiliado_eventos` `siafe` on((`siae`.`ID_evento` = `siafe`.`ID_evento`))) left join `sigmel_lista_parametros` `slp` on((`siafe`.`Tipo_afiliado` = `slp`.`Id_Parametro`))) left join `sigmel_informacion_dto_atel_eventos` `sidae` on(((`siae`.`ID_evento` = `sidae`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sidae`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sidae`.`Id_proceso`)))) left join `sigmel_informacion_adiciones_dx_eventos` `siade` on(((`siae`.`ID_evento` = `siade`.`ID_evento`) and (`siae`.`Id_Asignacion` = `siade`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `siade`.`Id_proceso`)))) left join `sigmel_informacion_pronunciamiento_eventos` `sipe` on(((`siae`.`ID_evento` = `sipe`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sipe`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sipe`.`Id_proceso`)))) left join `sigmel_informacion_decreto_eventos` `side` on(((`siae`.`ID_evento` = `side`.`ID_Evento`) and (`siae`.`Id_Asignacion` = `side`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `side`.`Id_proceso`)))) left join `sigmel_informacion_comite_interdisciplinario_eventos` `sicie` on(((`siae`.`ID_evento` = `sicie`.`ID_evento`) and (`siae`.`Id_Asignacion` = `sicie`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `sicie`.`Id_proceso`)))) left join `sigmel_informacion_laboralmente_activo_eventos` `silae` on(((`siae`.`ID_evento` = `silae`.`ID_evento`) and (`siae`.`Id_Asignacion` = `silae`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `silae`.`Id_proceso`)))) left join `sigmel_informacion_rol_ocupacional_eventos` `siroe` on(((`siae`.`ID_evento` = `siroe`.`ID_evento`) and (`siae`.`Id_Asignacion` = `siroe`.`Id_Asignacion`) and (`siae`.`Id_proceso` = `siroe`.`Id_proceso`)))) left join `sigmel_lista_parametros` `slp2` on((`sidae`.`Origen` = `slp2`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp3` on((`siade`.`Origen` = `slp3`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp4` on((`sipe`.`Id_tipo_origen` = `slp4`.`Id_Parametro`))) left join `sigmel_lista_parametros` `slp5` on((`side`.`Origen` = `slp5`.`Id_Parametro`))) left join `sigmel_lista_tipo_eventos` `slte` on((`sidae`.`Tipo_evento` = `slte`.`Id_Evento`))) left join `sigmel_lista_tipo_eventos` `slte2` on((`siade`.`Tipo_evento` = `slte2`.`Id_Evento`))) left join `sigmel_lista_tipo_eventos` `slte3` on((`sipe`.`Id_tipo_evento` = `slte3`.`Id_Evento`))) left join `sigmel_lista_tipo_eventos` `slte4` on((`side`.`Tipo_evento` = `slte4`.`Id_Evento`))) left join `sigmel_lista_califi_decretos` `slcd` on((`side`.`Decreto_calificacion` = `slcd`.`Id_Decreto`))) left join (select `subq`.`Id_Asignacion` AS `Id_Asignacion`,`subq`.`ID_evento` AS `ID_evento`,`subq`.`Id_proceso` AS `Id_proceso`,max((case when (`subq`.`rn` = 1) then `subq`.`CIE10` end)) AS `Cie10_1`,max((case when (`subq`.`rn` = 1) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_1`,max((case when (`subq`.`rn` = 2) then `subq`.`CIE10` end)) AS `Cie10_2`,max((case when (`subq`.`rn` = 2) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_2`,max((case when (`subq`.`rn` = 3) then `subq`.`CIE10` end)) AS `Cie10_3`,max((case when (`subq`.`rn` = 3) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_3`,max((case when (`subq`.`rn` = 4) then `subq`.`CIE10` end)) AS `Cie10_4`,max((case when (`subq`.`rn` = 4) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_4`,max((case when (`subq`.`rn` = 5) then `subq`.`CIE10` end)) AS `Cie10_5`,max((case when (`subq`.`rn` = 5) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_5`,max((case when (`subq`.`rn` = 6) then `subq`.`CIE10` end)) AS `Cie10_6`,max((case when (`subq`.`rn` = 6) then `subq`.`Descripcion_diagnostico` end)) AS `Diagnostico_6` from (select `siae1`.`Id_Asignacion` AS `Id_Asignacion`,`siae1`.`ID_evento` AS `ID_evento`,`siae1`.`Id_proceso` AS `Id_proceso`,`slcied`.`CIE10` AS `CIE10`,`slcied`.`Descripcion_diagnostico` AS `Descripcion_diagnostico`,row_number() OVER (PARTITION BY `siae1`.`Id_Asignacion` ORDER BY `sidev`.`Id_Diagnosticos_motcali` )  AS `rn` from ((`sigmel_informacion_asignacion_eventos` `siae1` left join `sigmel_informacion_diagnosticos_eventos` `sidev` on((`siae1`.`Id_Asignacion` = `sidev`.`Id_Asignacion`))) left join `sigmel_lista_cie_diagnosticos` `slcied` on((`sidev`.`CIE10` = `slcied`.`Id_Cie_diagnostico`))) where (((`siae1`.`Id_servicio` in (7,8)) and (`sidev`.`Estado_Recalificacion` = 'Activo')) or ((`siae1`.`Id_servicio` in (1,2,3,6,9)) and (`sidev`.`Estado` = 'Activo')))) `subq` group by `subq`.`Id_Asignacion`) `diagnosticos` on(((`diagnosticos`.`Id_Asignacion` = `siae`.`Id_Asignacion`) and (`diagnosticos`.`ID_evento` = `siae`.`ID_evento`) and (`diagnosticos`.`Id_proceso` = `siae`.`Id_proceso`)))) left join `sigmel_informacion_laboral_eventos` `sile` on((`siae`.`ID_evento` = `sile`.`ID_evento`))) left join `sigmel_informacion_entidades` `sie` on((`siafe`.`Id_arl` = `sie`.`Id_Entidad`))) left join `sigmel_informacion_entidades` `sie1` on((`siafe`.`Id_eps` = `sie1`.`Id_Entidad`))) left join `sigmel_lista_departamentos_municipios` `sldm` on((`siafe`.`Id_municipio` = `sldm`.`Id_municipios`))) left join `sigmel_informacion_entidades` `sie2` on((`sipe`.`Id_nombre_calificador` = `sie2`.`Id_Entidad`))) where ((`siacce`.`Aud_Estado_Facturacion` is not null) and (`siae`.`Id_servicio` in (1,2,3,6,7,8,9))) group by `siacce`.`Aud_F_accion` order by `siacce`.`Aud_F_accion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-20 10:24:10
