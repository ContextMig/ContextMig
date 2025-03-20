.class public final Landroid/support/coreui/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/coreui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final action_container:I = 0x7f09000f

.field public static final action_divider:I = 0x7f090012

.field public static final action_image:I = 0x7f090015

.field public static final action_text:I = 0x7f09001c

.field public static final actions:I = 0x7f09001e

.field public static final async:I = 0x7f090024

.field public static final blocking:I = 0x7f09002b

.field public static final bottom:I = 0x7f09002c

.field public static final chronometer:I = 0x7f09003b

.field public static final end:I = 0x7f090051

.field public static final forever:I = 0x7f090068

.field public static final icon:I = 0x7f09006f

.field public static final icon_group:I = 0x7f090070

.field public static final info:I = 0x7f090073

.field public static final italic:I = 0x7f090074

.field public static final left:I = 0x7f090079

.field public static final line1:I = 0x7f09007a

.field public static final line3:I = 0x7f09007b

.field public static final none:I = 0x7f09008f

.field public static final normal:I = 0x7f090090

.field public static final notification_background:I = 0x7f090091

.field public static final notification_main_column:I = 0x7f090092

.field public static final notification_main_column_container:I = 0x7f090093

.field public static final right:I = 0x7f09009d

.field public static final right_icon:I = 0x7f09009e

.field public static final right_side:I = 0x7f09009f

.field public static final start:I = 0x7f0900cb

.field public static final tag_transition_group:I = 0x7f0900d1

.field public static final text:I = 0x7f0900d2

.field public static final text2:I = 0x7f0900d3

.field public static final time:I = 0x7f0900e3

.field public static final title:I = 0x7f0900e4

.field public static final top:I = 0x7f0900e8


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/coreui/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7920b1c4db126f79L    # 2.8899952294555296E275

    const-string/jumbo v2, "android/support/coreui/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/coreui/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/coreui/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
