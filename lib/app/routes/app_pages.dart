import 'package:get/get.dart';

import '../modules/AboutMorvi/bindings/about_morvi_binding.dart';
import '../modules/AboutMorvi/views/about_morvi_view.dart';
import '../modules/AccessoriesPrintMaker/bindings/accessories_print_maker_binding.dart';
import '../modules/AccessoriesPrintMaker/views/accessories_print_maker_view.dart';
import '../modules/AccessoriesPrintMaker_AddNewPage/bindings/accessories_print_maker_add_new_page_binding.dart';
import '../modules/AccessoriesPrintMaker_AddNewPage/views/accessories_print_maker_add_new_page_view.dart';
import '../modules/AddProductSell/bindings/add_product_sell_binding.dart';
import '../modules/AddProductSell/views/add_product_sell_view.dart';
import '../modules/Bottomnavigationbar_Screen/bindings/bottomnavigationbar_screen_binding.dart';
import '../modules/Bottomnavigationbar_Screen/views/bottomnavigationbar_screen_view.dart';
import '../modules/Camera_Analyzer_Consultancy_Fee/bindings/camera_analyzer_consultancy_fee_binding.dart';
import '../modules/Camera_Analyzer_Consultancy_Fee/views/camera_analyzer_consultancy_fee_view.dart';
import '../modules/Camera_Analyzer_Consultancy_FeeAddNew/bindings/camera_analyzer_consultancy_fee_add_new_binding.dart';
import '../modules/Camera_Analyzer_Consultancy_FeeAddNew/views/camera_analyzer_consultancy_fee_add_new_view.dart';
import '../modules/Camera_Repairing_Price/bindings/camera_repairing_price_binding.dart';
import '../modules/Camera_Repairing_Price/views/camera_repairing_price_view.dart';
import '../modules/Camera_Repairing_Price_AddNew/bindings/camera_repairing_price_add_new_binding.dart';
import '../modules/Camera_Repairing_Price_AddNew/views/camera_repairing_price_add_new_view.dart';
import '../modules/CategoryPage/bindings/category_page_binding.dart';
import '../modules/CategoryPage/views/category_page_view.dart';
import '../modules/Choose_PlacesPage/bindings/choose_places_page_binding.dart';
import '../modules/Choose_PlacesPage/views/choose_places_page_view.dart';
import '../modules/DataPolicyPage/bindings/data_policy_page_binding.dart';
import '../modules/DataPolicyPage/views/data_policy_page_view.dart';
import '../modules/Document_verification/bindings/document_verification_binding.dart';
import '../modules/Document_verification/views/document_verification_view.dart';
import '../modules/DrawerPage/bindings/drawer_page_binding.dart';
import '../modules/DrawerPage/views/drawer_page_view.dart';
import '../modules/Enquiries_Details/bindings/enquiries_details_binding.dart';
import '../modules/Enquiries_Details/views/enquiries_details_view.dart';
import '../modules/Enquiries_Page/bindings/enquiries_page_binding.dart';
import '../modules/Enquiries_Page/views/enquiries_page_view.dart';
import '../modules/Equipments_AddNewPage/bindings/equipments_add_new_page_binding.dart';
import '../modules/Equipments_AddNewPage/views/equipments_add_new_page_view.dart';
import '../modules/Equipments_OnRentPage/bindings/equipments_on_rent_page_binding.dart';
import '../modules/Equipments_OnRentPage/views/equipments_on_rent_page_view.dart';
import '../modules/Find_Product/bindings/find_product_binding.dart';
import '../modules/Find_Product/views/find_product_view.dart';
import '../modules/Find_Products_Details/bindings/find_products_details_binding.dart';
import '../modules/Find_Products_Details/views/find_products_details_view.dart';
import '../modules/Live_Video_SettupPage/bindings/live_video_settup_page_binding.dart';
import '../modules/Live_Video_SettupPage/views/live_video_settup_page_view.dart';
import '../modules/Live_Video_Settup_AddNewPage/bindings/live_video_settup_add_new_page_binding.dart';
import '../modules/Live_Video_Settup_AddNewPage/views/live_video_settup_add_new_page_view.dart';
import '../modules/MediaPage/bindings/media_page_binding.dart';
import '../modules/MediaPage/views/media_page_view.dart';
import '../modules/Media_Photos_Videos/bindings/media_photos_videos_binding.dart';
import '../modules/Media_Photos_Videos/views/media_photos_videos_view.dart';
import '../modules/MyProfessional/bindings/my_professional_binding.dart';
import '../modules/MyProfessional/views/my_professional_view.dart';
import '../modules/NormalUser_CreateNew_Account/bindings/normal_user_create_new_account_binding.dart';
import '../modules/NormalUser_CreateNew_Account/views/normal_user_create_new_account_view.dart';
import '../modules/NormalUser_Home/bindings/normal_user_home_binding.dart';
import '../modules/NormalUser_Home/views/normal_user_home_view.dart';
import '../modules/NormalUser_Live_Enquiry/bindings/normal_user_live_enquiry_binding.dart';
import '../modules/NormalUser_Live_Enquiry/views/normal_user_live_enquiry_view.dart';
import '../modules/NormalUser_Otp/bindings/normal_user_otp_binding.dart';
import '../modules/NormalUser_Otp/views/normal_user_otp_view.dart';
import '../modules/NormalUser_SignupSuccess/bindings/normal_user_signup_success_binding.dart';
import '../modules/NormalUser_SignupSuccess/views/normal_user_signup_success_view.dart';
import '../modules/Normaluser_Live_EnquiryAddNew/bindings/normaluser_live_enquiry_add_new_binding.dart';
import '../modules/Normaluser_Live_EnquiryAddNew/views/normaluser_live_enquiry_add_new_view.dart';
import '../modules/Normaluser_ProfileSettings/bindings/normaluser_profile_settings_binding.dart';
import '../modules/Normaluser_ProfileSettings/views/normaluser_profile_settings_view.dart';
import '../modules/Photo_AlbumPage/bindings/photo_album_page_binding.dart';
import '../modules/Photo_AlbumPage/views/photo_album_page_view.dart';
import '../modules/Photo_Album_AddNewPage/bindings/photo_album_add_new_page_binding.dart';
import '../modules/Photo_Album_AddNewPage/views/photo_album_add_new_page_view.dart';
import '../modules/Photo_Lab_Price/bindings/photo_lab_price_binding.dart';
import '../modules/Photo_Lab_Price/views/photo_lab_price_view.dart';
import '../modules/Photo_Lab_PriceAddNew/bindings/photo_lab_price_add_new_binding.dart';
import '../modules/Photo_Lab_PriceAddNew/views/photo_lab_price_add_new_view.dart';
import '../modules/Photoframe_AddNew_page/bindings/photoframe_add_new_page_binding.dart';
import '../modules/Photoframe_AddNew_page/views/photoframe_add_new_page_view.dart';
import '../modules/Photoframe_page/bindings/photoframe_page_binding.dart';
import '../modules/Photoframe_page/views/photoframe_page_view.dart';
import '../modules/Photography_Institute_Price/bindings/photography_institute_price_binding.dart';
import '../modules/Photography_Institute_Price/views/photography_institute_price_view.dart';
import '../modules/Photography_Institute_PriceAddNewPage/bindings/photography_institute_price_add_new_page_binding.dart';
import '../modules/Photography_Institute_PriceAddNewPage/views/photography_institute_price_add_new_page_view.dart';
import '../modules/Photostudio_Material_Supplies/bindings/photostudio_material_supplies_binding.dart';
import '../modules/Photostudio_Material_Supplies/views/photostudio_material_supplies_view.dart';
import '../modules/Photostudio_Material_Supplies_AddNew/bindings/photostudio_material_supplies_add_new_binding.dart';
import '../modules/Photostudio_Material_Supplies_AddNew/views/photostudio_material_supplies_add_new_view.dart';
import '../modules/ProductDetails/bindings/product_details_binding.dart';
import '../modules/ProductDetails/views/product_details_view.dart';
import '../modules/Products/bindings/products_binding.dart';
import '../modules/Products/views/products_view.dart';
import '../modules/Professional_ViewProfile/bindings/professional_view_profile_binding.dart';
import '../modules/Professional_ViewProfile/views/professional_view_profile_view.dart';
import '../modules/ProfileSettings/bindings/profile_settings_binding.dart';
import '../modules/ProfileSettings/views/profile_settings_view.dart';
import '../modules/ProfileSettingsBusiness/bindings/profile_settings_business_binding.dart';
import '../modules/ProfileSettingsBusiness/views/profile_settings_business_view.dart';
import '../modules/Search_Professionals/bindings/search_professionals_binding.dart';
import '../modules/Search_Professionals/views/search_professionals_view.dart';
import '../modules/SellScreen/bindings/sell_screen_binding.dart';
import '../modules/SellScreen/views/sell_screen_view.dart';
import '../modules/TermsAndConditopnsPage/bindings/terms_and_conditopns_page_binding.dart';
import '../modules/TermsAndConditopnsPage/views/terms_and_conditopns_page_view.dart';
import '../modules/Video_MixingPage/bindings/video_mixing_page_binding.dart';
import '../modules/Video_MixingPage/views/video_mixing_page_view.dart';
import '../modules/Video_Mixing_AddNewPage/bindings/video_mixing_add_new_page_binding.dart';
import '../modules/Video_Mixing_AddNewPage/views/video_mixing_add_new_page_view.dart';
import '../modules/Your_Advertisment_AddText/bindings/your_advertisment_add_text_binding.dart';
import '../modules/Your_Advertisment_AddText/views/your_advertisment_add_text_view.dart';
import '../modules/Your_Advertisment_AddVideo/bindings/your_advertisment_add_video_binding.dart';
import '../modules/Your_Advertisment_AddVideo/views/your_advertisment_add_video_view.dart';
import '../modules/buisness-info/bindings/buisness_info_binding.dart';
import '../modules/buisness-info/views/buisness_info_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_options/bindings/login_options_binding.dart';
import '../modules/login_options/views/login_options_view.dart';
import '../modules/my_advertisement/bindings/my_advertisement_binding.dart';
import '../modules/my_advertisement/views/my_advertisement_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/professional_tab/bindings/professional_tab_binding.dart';
import '../modules/professional_tab/views/professional_tab_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/signup_success/bindings/signup_success_binding.dart';
import '../modules/signup_success/views/signup_success_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/your_advertisement/bindings/your_advertisement_binding.dart';
import '../modules/your_advertisement/views/your_advertisement_view.dart';
import '../modules/your_professional/bindings/your_professional_binding.dart';
import '../modules/your_professional/views/your_professional_view.dart';
import '../modules/your_proffession/bindings/your_proffession_binding.dart';
import '../modules/your_proffession/views/your_proffession_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.PROFILE_SETTINGS,
      page: () => ProfileSettingsView(),
      binding: ProfileSettingsBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFESSIONAL,
      page: () => MyProfessionalView(),
      binding: MyProfessionalBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTINGS_BUSINESS,
      page: () => ProfileSettingsBusinessView(),
      binding: ProfileSettingsBusinessBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER_PAGE,
      page: () => const DrawerPageView(),
      binding: DrawerPageBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_MORVI,
      page: () => const AboutMorviView(),
      binding: AboutMorviBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITOPNS_PAGE,
      page: () => const TermsAndConditopnsPageView(),
      binding: TermsAndConditopnsPageBinding(),
    ),
    GetPage(
      name: _Paths.DATA_POLICY_PAGE,
      page: () => const DataPolicyPageView(),
      binding: DataPolicyPageBinding(),
    ),
    GetPage(
      name: _Paths.SELL_SCREEN,
      page: () => const SellScreenView(),
      binding: SellScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT_SELL,
      page: () => AddProductSellView(),
      binding: AddProductSellBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_PAGE,
      page: () => const CategoryPageView(),
      binding: CategoryPageBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_PAGE,
      page: () => const MediaPageView(),
      binding: MediaPageBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_PHOTOS_VIDEOS,
      page: () => const MediaPhotosVideosView(),
      binding: MediaPhotosVideosBinding(),
    ),
    GetPage(
      name: _Paths.EQUIPMENTS_ADD_NEW_PAGE,
      page: () => const EquipmentsAddNewPageView(),
      binding: EquipmentsAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.EQUIPMENTS_ON_RENT_PAGE,
      page: () => const EquipmentsOnRentPageView(),
      binding: EquipmentsOnRentPageBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_PLACES_PAGE,
      page: () => const ChoosePlacesPageView(),
      binding: ChoosePlacesPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOFRAME_PAGE,
      page: () => const PhotoframePageView(),
      binding: PhotoframePageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOFRAME_ADD_NEW_PAGE,
      page: () => const PhotoframeAddNewPageView(),
      binding: PhotoframeAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MIXING_PAGE,
      page: () => const VideoMixingPageView(),
      binding: VideoMixingPageBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MIXING_ADD_NEW_PAGE,
      page: () => const VideoMixingAddNewPageView(),
      binding: VideoMixingAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_ALBUM_PAGE,
      page: () => const PhotoAlbumPageView(),
      binding: PhotoAlbumPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_ALBUM_ADD_NEW_PAGE,
      page: () => const PhotoAlbumAddNewPageView(),
      binding: PhotoAlbumAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.ACCESSORIES_PRINT_MAKER,
      page: () => const AccessoriesPrintMakerView(),
      binding: AccessoriesPrintMakerBinding(),
    ),
    GetPage(
      name: _Paths.ACCESSORIES_PRINT_MAKER_ADD_NEW_PAGE,
      page: () => const AccessoriesPrintMakerAddNewPageView(),
      binding: AccessoriesPrintMakerAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_VIDEO_SETTUP_PAGE,
      page: () => const LiveVideoSettupPageView(),
      binding: LiveVideoSettupPageBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_VIDEO_SETTUP_ADD_NEW_PAGE,
      page: () => const LiveVideoSettupAddNewPageView(),
      binding: LiveVideoSettupAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOGRAPHY_INSTITUTE_PRICE,
      page: () => const PhotographyInstitutePriceView(),
      binding: PhotographyInstitutePriceBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOGRAPHY_INSTITUTE_PRICE_ADD_NEW_PAGE,
      page: () => const PhotographyInstitutePriceAddNewPageView(),
      binding: PhotographyInstitutePriceAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_LAB_PRICE,
      page: () => const PhotoLabPriceView(),
      binding: PhotoLabPriceBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_LAB_PRICE_ADD_NEW,
      page: () => const PhotoLabPriceAddNewView(),
      binding: PhotoLabPriceAddNewBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOSTUDIO_MATERIAL_SUPPLIES,
      page: () => const PhotostudioMaterialSuppliesView(),
      binding: PhotostudioMaterialSuppliesBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOSTUDIO_MATERIAL_SUPPLIES_ADD_NEW,
      page: () => const PhotostudioMaterialSuppliesAddNewView(),
      binding: PhotostudioMaterialSuppliesAddNewBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_REPAIRING_PRICE,
      page: () => const CameraRepairingPriceView(),
      binding: CameraRepairingPriceBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_REPAIRING_PRICE_ADD_NEW,
      page: () => const CameraRepairingPriceAddNewView(),
      binding: CameraRepairingPriceAddNewBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_ANALYZER_CONSULTANCY_FEE,
      page: () => const CameraAnalyzerConsultancyFeeView(),
      binding: CameraAnalyzerConsultancyFeeBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_ANALYZER_CONSULTANCY_FEE_ADD_NEW,
      page: () => const CameraAnalyzerConsultancyFeeAddNewView(),
      binding: CameraAnalyzerConsultancyFeeAddNewBinding(),
    ),
    GetPage(
      name: _Paths.ENQUIRIES_PAGE,
      page: () => const EnquiriesPageView(),
      binding: EnquiriesPageBinding(),
    ),
    GetPage(
      name: _Paths.ENQUIRIES_DETAILS,
      page: () => const EnquiriesDetailsView(),
      binding: EnquiriesDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FIND_PRODUCT,
      page: () => const FindProductView(),
      binding: FindProductBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_PROFESSIONALS,
      page: () => const SearchProfessionalsView(),
      binding: SearchProfessionalsBinding(),
    ),
    GetPage(
      name: _Paths.FIND_PRODUCTS_DETAILS,
      page: () => const FindProductsDetailsView(),
      binding: FindProductsDetailsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_OPTIONS,
      page: () => const LoginOptionsView(),
      binding: LoginOptionsBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.BUISNESS_INFO,
      page: () => const BuisnessInfoView(),
      binding: BuisnessInfoBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_SUCCESS,
      page: () => const SignupSuccessView(),
      binding: SignupSuccessBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_PROFFESSION,
      page: () => YourProffessionView(),
      binding: YourProffessionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTINGS,
      page: () => ProfileSettingsView(),
      binding: ProfileSettingsBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFESSIONAL,
      page: () => MyProfessionalView(),
      binding: MyProfessionalBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTINGS_BUSINESS,
      page: () => const ProfileSettingsBusinessView(),
      binding: ProfileSettingsBusinessBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER_PAGE,
      page: () => const DrawerPageView(),
      binding: DrawerPageBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_MORVI,
      page: () => const AboutMorviView(),
      binding: AboutMorviBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITOPNS_PAGE,
      page: () => const TermsAndConditopnsPageView(),
      binding: TermsAndConditopnsPageBinding(),
    ),
    GetPage(
      name: _Paths.DATA_POLICY_PAGE,
      page: () => const DataPolicyPageView(),
      binding: DataPolicyPageBinding(),
    ),
    GetPage(
      name: _Paths.SELL_SCREEN,
      page: () => const SellScreenView(),
      binding: SellScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT_SELL,
      page: () => AddProductSellView(),
      binding: AddProductSellBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_PROFESSIONAL,
      page: () => YourProfessionalView(),
      binding: YourProfessionalBinding(),
    ),
    GetPage(
      name: _Paths.PROFESSIONAL_TAB,
      page: () => const ProfessionalTabView(),
      binding: ProfessionalTabBinding(),
    ),
    GetPage(
      name: _Paths.MY_ADVERTISEMENT,
      page: () => const MyAdvertisementView(),
      binding: MyAdvertisementBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_ADVERTISEMENT,
      page: () => const YourAdvertisementView(),
      binding: YourAdvertisementBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTINGS,
      page: () => ProfileSettingsView(),
      binding: ProfileSettingsBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFESSIONAL,
      page: () => MyProfessionalView(),
      binding: MyProfessionalBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTINGS_BUSINESS,
      page: () => const ProfileSettingsBusinessView(),
      binding: ProfileSettingsBusinessBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER_PAGE,
      page: () => const DrawerPageView(),
      binding: DrawerPageBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_MORVI,
      page: () => const AboutMorviView(),
      binding: AboutMorviBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITOPNS_PAGE,
      page: () => const TermsAndConditopnsPageView(),
      binding: TermsAndConditopnsPageBinding(),
    ),
    GetPage(
      name: _Paths.DATA_POLICY_PAGE,
      page: () => const DataPolicyPageView(),
      binding: DataPolicyPageBinding(),
    ),
    GetPage(
      name: _Paths.SELL_SCREEN,
      page: () => const SellScreenView(),
      binding: SellScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT_SELL,
      page: () => AddProductSellView(),
      binding: AddProductSellBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_PAGE,
      page: () => const CategoryPageView(),
      binding: CategoryPageBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_PAGE,
      page: () => const MediaPageView(),
      binding: MediaPageBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_PHOTOS_VIDEOS,
      page: () => const MediaPhotosVideosView(),
      binding: MediaPhotosVideosBinding(),
    ),
    GetPage(
      name: _Paths.EQUIPMENTS_ADD_NEW_PAGE,
      page: () => const EquipmentsAddNewPageView(),
      binding: EquipmentsAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.EQUIPMENTS_ON_RENT_PAGE,
      page: () => const EquipmentsOnRentPageView(),
      binding: EquipmentsOnRentPageBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_PLACES_PAGE,
      page: () => const ChoosePlacesPageView(),
      binding: ChoosePlacesPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOFRAME_PAGE,
      page: () => const PhotoframePageView(),
      binding: PhotoframePageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOFRAME_ADD_NEW_PAGE,
      page: () => const PhotoframeAddNewPageView(),
      binding: PhotoframeAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MIXING_PAGE,
      page: () => const VideoMixingPageView(),
      binding: VideoMixingPageBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MIXING_ADD_NEW_PAGE,
      page: () => const VideoMixingAddNewPageView(),
      binding: VideoMixingAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_ALBUM_PAGE,
      page: () => const PhotoAlbumPageView(),
      binding: PhotoAlbumPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_ALBUM_ADD_NEW_PAGE,
      page: () => const PhotoAlbumAddNewPageView(),
      binding: PhotoAlbumAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.ACCESSORIES_PRINT_MAKER,
      page: () => const AccessoriesPrintMakerView(),
      binding: AccessoriesPrintMakerBinding(),
    ),
    GetPage(
      name: _Paths.ACCESSORIES_PRINT_MAKER_ADD_NEW_PAGE,
      page: () => const AccessoriesPrintMakerAddNewPageView(),
      binding: AccessoriesPrintMakerAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_VIDEO_SETTUP_PAGE,
      page: () => const LiveVideoSettupPageView(),
      binding: LiveVideoSettupPageBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_VIDEO_SETTUP_ADD_NEW_PAGE,
      page: () => const LiveVideoSettupAddNewPageView(),
      binding: LiveVideoSettupAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOGRAPHY_INSTITUTE_PRICE,
      page: () => const PhotographyInstitutePriceView(),
      binding: PhotographyInstitutePriceBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOGRAPHY_INSTITUTE_PRICE_ADD_NEW_PAGE,
      page: () => const PhotographyInstitutePriceAddNewPageView(),
      binding: PhotographyInstitutePriceAddNewPageBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_LAB_PRICE,
      page: () => const PhotoLabPriceView(),
      binding: PhotoLabPriceBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO_LAB_PRICE_ADD_NEW,
      page: () => const PhotoLabPriceAddNewView(),
      binding: PhotoLabPriceAddNewBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOSTUDIO_MATERIAL_SUPPLIES,
      page: () => const PhotostudioMaterialSuppliesView(),
      binding: PhotostudioMaterialSuppliesBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOSTUDIO_MATERIAL_SUPPLIES_ADD_NEW,
      page: () => const PhotostudioMaterialSuppliesAddNewView(),
      binding: PhotostudioMaterialSuppliesAddNewBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_REPAIRING_PRICE,
      page: () => const CameraRepairingPriceView(),
      binding: CameraRepairingPriceBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_REPAIRING_PRICE_ADD_NEW,
      page: () => const CameraRepairingPriceAddNewView(),
      binding: CameraRepairingPriceAddNewBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_ANALYZER_CONSULTANCY_FEE,
      page: () => const CameraAnalyzerConsultancyFeeView(),
      binding: CameraAnalyzerConsultancyFeeBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_ANALYZER_CONSULTANCY_FEE_ADD_NEW,
      page: () => const CameraAnalyzerConsultancyFeeAddNewView(),
      binding: CameraAnalyzerConsultancyFeeAddNewBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATIONBAR_SCREEN,
      page: () => const BottomnavigationbarScreenView(),
      binding: BottomnavigationbarScreenBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT_VERIFICATION,
      page: () => const DocumentVerificationView(),
      binding: DocumentVerificationBinding(),
    ),
    GetPage(
      name: _Paths.NORMAL_USER_SIGNUP_SUCCESS,
      page: () => const NormalUserSignupSuccessView(),
      binding: NormalUserSignupSuccessBinding(),
    ),
    GetPage(
      name: _Paths.NORMAL_USER_HOME,
      page: () => NormalUserHomeView(),
      binding: NormalUserHomeBinding(),
    ),
    GetPage(
      name: _Paths.NORMAL_USER_CREATE_NEW_ACCOUNT,
      page: () => const NormalUserCreateNewAccountView(),
      binding: NormalUserCreateNewAccountBinding(),
    ),
    GetPage(
      name: _Paths.NORMAL_USER_OTP,
      page: () => NormalUserOtpView(),
      binding: NormalUserOtpBinding(),
    ),
    GetPage(
      name: _Paths.NORMAL_USER_LIVE_ENQUIRY,
      page: () => const NormalUserLiveEnquiryView(),
      binding: NormalUserLiveEnquiryBinding(),
    ),
    GetPage(
      name: _Paths.NORMALUSER_LIVE_ENQUIRY_ADD_NEW,
      page: () => const NormaluserLiveEnquiryAddNewView(),
      binding: NormaluserLiveEnquiryAddNewBinding(),
    ),
    GetPage(
      name: _Paths.NORMALUSER_PROFILE_SETTINGS,
      page: () => const NormaluserProfileSettingsView(),
      binding: NormaluserProfileSettingsBinding(),
    ),
    GetPage(
      name: _Paths.PROFESSIONAL_VIEW_PROFILE,
      page: () => const ProfessionalViewProfileView(),
      binding: ProfessionalViewProfileBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_ADVERTISMENT_ADD_TEXT,
      page: () => const YourAdvertismentAddTextView(),
      binding: YourAdvertismentAddTextBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_ADVERTISMENT_ADD_VIDEO,
      page: () => const YourAdvertismentAddVideoView(),
      binding: YourAdvertismentAddVideoBinding(),
    ),
  ];
}
