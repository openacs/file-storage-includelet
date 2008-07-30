ad_page_contract {

    The display logic for the file storage admin includelet.

    @author yon (yon@openforce.net)
    @creation-date 2002-05-13
    @version $Id$

}

set return_url [ns_conn url]

set user_id [ad_conn user_id]

ad_return_template

set package_id [site_node_apm_integration::get_child_package_id -package_key "file-storage"]
set fs_url "/shared/parameters?[export_url_vars package_id return_url]"
set show_fs_url_p [parameter::get_from_package_key -parameter ShowParametersLinkP -package_key file-storage-includelet -default 1]
