<?php

use WHMCS\View\Menu\Item as MenuItem;

add_hook('ClientAreaPrimaryNavbar', 1, function (MenuItem $primaryNavbar)
{
    // Ẩn menu Network Status
    if (!is_null($primaryNavbar->getChild('Network Status'))) {
        $primaryNavbar->removeChild('Network Status');
    }

    // Ẩn menu Announcements
    if (!is_null($primaryNavbar->getChild('Announcements'))) {
        $primaryNavbar->removeChild('Announcements');
    }

    // Ẩn menu Services --> View Available Addons
    $menuItem = $primaryNavbar->getChild('Services');
    if(!is_null($menuItem)) {
        if(!is_null($menuItem->getChild('View Available Addons')))
        $primaryNavbar->getChild('Services')->removeChild('View Available Addons');
    }

    // Ẩn menu billing --> My Quotes
    $menuItem = $primaryNavbar->getChild('Billing');
    if(!is_null($menuItem)) {
        if(!is_null($menuItem->getChild('My Quotes'))) {
            $menuItem->removeChild('My Quotes');
        }
    }

    // Set url cho menu Contact Us
    if (!is_null($primaryNavbar->getChild('Contact Us'))) {
        $primaryNavbar->getChild('Contact Us')->setURI('https://exa.vn');
    }
});

add_hook('ClientAreaPrimarySidebar', 1, function(MenuItem $primarySidebar)
{
    // Ẩn menu "Security settings"
    $mainSideBar = $primarySidebar->getChild('My Account');
    if(!is_null($mainSideBar)) {
        if(!is_null($mainSideBar->getChild('Security Settings'))) {
            $primarySidebar->getChild('My Account')->removeChild('Security Settings');
        }
    }
    // // Ẩn menu billing --> My Quotes
    // $mainSideBar = $primarySidebar->getChild('Billing');    
    // if(!is_null($mainSideBar)) {
    //     if(!is_null($mainSideBar->getChild('My Quotes'))) {
    //         $primarySidebar->getChild('Billing')->removeChild('My Quotes');
    //     }
    // }
});

add_hook('ClientAreaSidebars', 1, function() {
    $primarySidebar = Menu::primarySidebar();
    $secondarySidebar = Menu::secondarySidebar();
    
    // Ẩn menu Billing --> Quotes
    $id = 'Billing';
    $menuSideBar = $primarySidebar->getChild($id);
    if(is_null($menuSideBar)) {
        $menuSideBar = $secondarySidebar->getChild($id);
    }

    if(!is_null($menuSideBar)) {
        if(!is_null($menuSideBar->getChild('Quotes'))) {
            $menuSideBar->removeChild('Quotes');
        }
    }
});