.class public final Lcom/android/systemui/QpRune;
.super Lcom/android/systemui/Rune;
.source "qb/79724922 ce0b394e01256a4843aa114c04d232f0251299711d0502a9732e7e49dc517cff"


# static fields
.field public static final NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

.field public static final PANEL_DATA_USAGE_LABEL:Z

.field public static final QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

.field public static final QUICK_BAR_EXTRA_BRIGHTNESS:Z

.field public static final QUICK_BAR_MULTISIM:Z

.field public static final QUICK_BLUETOOTH_MUSIC_SHARE:Z

.field public static final QUICK_HIDE_TILE_FROM_BAR:Z

.field public static final QUICK_MANAGE_TWO_PHONE:Z

.field public static final QUICK_ONE_UI_6_1:Z

.field public static final QUICK_PANEL_BLUR:Z

.field public static final QUICK_PANEL_BLUR_DEFAULT:Z

.field public static final QUICK_PANEL_BLUR_MASSIVE:Z

.field public static final QUICK_PANEL_SUBSCREEN:Z

.field public static final QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

.field public static final QUICK_SETTINGS_SUBSCREEN:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

.field public static final QUICK_TABLET:Z

.field public static final QUICK_TABLET_BG:Z

.field public static final QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

.field public static final QUICK_TABLET_TOP_MARGIN:Z

.field public static final QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

.field public static final QUICK_TILE_FLASHLIGHT_INTENSITY:Z

.field public static final QUICK_TILE_NIGHT_DIM:Z

.field public static final QUICK_TILE_ROTATION_MANUAL:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    const-string/jumbo v1, "ro.surface_flinger.protected_contents"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "true"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportPersianCalendar"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportHijriLunarCalendar"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportZProjectFunctionInGlobal"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_EXTRA_BRIGHTNESS:Z

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_NIGHT_DIM:Z

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v3, "WATCHFACE"

    invoke-static {v0, v3}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    if-eqz v3, :cond_8

    const-string v3, "LARGESCREEN"

    invoke-static {v0, v3}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_TORCH_BRIGHTNESS_LEVEL"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x24a54

    if-lt v0, v3, :cond_9

    goto :goto_8

    :cond_9
    move v1, v2

    :goto_8
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_ONE_UI_6_1:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
