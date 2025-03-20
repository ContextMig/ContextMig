.class public final Lcom/google/android/gms/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final common_google_signin_btn_text_dark:I = 0x7f0e008e

.field public static final common_google_signin_btn_text_dark_default:I = 0x7f0e0029

.field public static final common_google_signin_btn_text_dark_disabled:I = 0x7f0e002a

.field public static final common_google_signin_btn_text_dark_focused:I = 0x7f0e002b

.field public static final common_google_signin_btn_text_dark_pressed:I = 0x7f0e002c

.field public static final common_google_signin_btn_text_light:I = 0x7f0e008f

.field public static final common_google_signin_btn_text_light_default:I = 0x7f0e002d

.field public static final common_google_signin_btn_text_light_disabled:I = 0x7f0e002e

.field public static final common_google_signin_btn_text_light_focused:I = 0x7f0e002f

.field public static final common_google_signin_btn_text_light_pressed:I = 0x7f0e0030

.field public static final common_google_signin_btn_tint:I = 0x7f0e0090


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/R$color;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x77e0bb75194288c5L

    const-string v2, "com/google/android/gms/R$color"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/R$color;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/R$color;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
