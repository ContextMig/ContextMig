.class public final Landroid/support/graphics/drawable/animated/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/animated/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final TextAppearance_Compat_Notification:I = 0x7f0f00f1

.field public static final TextAppearance_Compat_Notification_Info:I = 0x7f0f00f2

.field public static final TextAppearance_Compat_Notification_Line2:I = 0x7f0f00f4

.field public static final TextAppearance_Compat_Notification_Time:I = 0x7f0f00f7

.field public static final TextAppearance_Compat_Notification_Title:I = 0x7f0f00f9

.field public static final Widget_Compat_NotificationActionContainer:I = 0x7f0f0178

.field public static final Widget_Compat_NotificationActionText:I = 0x7f0f0179

.field public static final Widget_Support_CoordinatorLayout:I = 0x7f0f0185


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/animated/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x66ebfd856664cb8dL    # 6.0894087858716366E187

    const-string/jumbo v2, "android/support/graphics/drawable/animated/R$style"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/animated/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/graphics/drawable/animated/R$style;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
