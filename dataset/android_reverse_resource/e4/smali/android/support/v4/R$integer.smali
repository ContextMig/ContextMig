.class public final Landroid/support/v4/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final cancel_button_image_alpha:I = 0x7f0a0004

.field public static final status_bar_notification_info_maxnum:I = 0x7f0a0009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v4/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7b779b5625f65700L    # -8.009828462090656E-287

    const-string/jumbo v2, "android/support/v4/R$integer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v4/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v4/R$integer;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
