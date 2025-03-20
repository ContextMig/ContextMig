.class Lorg/asdtm/goodweather/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/BaseActivity;->setupNavDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/BaseActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/BaseActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5b53141d0ad302beL    # -5.093211400342034E-132

    const-string v2, "org/asdtm/goodweather/BaseActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BaseActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/BaseActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iput-object p1, p0, Lorg/asdtm/goodweather/BaseActivity$1;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$1;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/BaseActivity;->access$000(Lorg/asdtm/goodweather/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 77
    aput-boolean v3, v0, v3

    return-void
.end method
