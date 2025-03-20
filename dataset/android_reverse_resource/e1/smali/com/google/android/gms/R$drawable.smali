.class public final Lcom/google/android/gms/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final common_full_open_on_phone:I = 0x7f02005d

.field public static final common_google_signin_btn_icon_dark:I = 0x7f02005e

.field public static final common_google_signin_btn_icon_dark_focused:I = 0x7f02005f

.field public static final common_google_signin_btn_icon_dark_normal:I = 0x7f020060

.field public static final common_google_signin_btn_icon_dark_normal_background:I = 0x7f020061

.field public static final common_google_signin_btn_icon_disabled:I = 0x7f020062

.field public static final common_google_signin_btn_icon_light:I = 0x7f020063

.field public static final common_google_signin_btn_icon_light_focused:I = 0x7f020064

.field public static final common_google_signin_btn_icon_light_normal:I = 0x7f020065

.field public static final common_google_signin_btn_icon_light_normal_background:I = 0x7f020066

.field public static final common_google_signin_btn_text_dark:I = 0x7f020067

.field public static final common_google_signin_btn_text_dark_focused:I = 0x7f020068

.field public static final common_google_signin_btn_text_dark_normal:I = 0x7f020069

.field public static final common_google_signin_btn_text_dark_normal_background:I = 0x7f02006a

.field public static final common_google_signin_btn_text_disabled:I = 0x7f02006b

.field public static final common_google_signin_btn_text_light:I = 0x7f02006c

.field public static final common_google_signin_btn_text_light_focused:I = 0x7f02006d

.field public static final common_google_signin_btn_text_light_normal:I = 0x7f02006e

.field public static final common_google_signin_btn_text_light_normal_background:I = 0x7f02006f

.field public static final googleg_disabled_color_18:I = 0x7f020089

.field public static final googleg_standard_color_18:I = 0x7f02008a


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1f8640c31b72f77L

    const-string v2, "com/google/android/gms/R$drawable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
