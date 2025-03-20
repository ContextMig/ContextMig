.class Lcom/haringeymobile/ukweather/AddCityFragment$1;
.super Ljava/lang/Object;
.source "AddCityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/AddCityFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/AddCityFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/AddCityFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5ee69ce7c18fc4e0L

    const-string v2, "com/haringeymobile/ukweather/AddCityFragment$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/AddCityFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/AddCityFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iput-object p1, p0, Lcom/haringeymobile/ukweather/AddCityFragment$1;->this$0:Lcom/haringeymobile/ukweather/AddCityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/haringeymobile/ukweather/AddCityFragment$1;->this$0:Lcom/haringeymobile/ukweather/AddCityFragment;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/AddCityFragment;->access$000(Lcom/haringeymobile/ukweather/AddCityFragment;)V

    .line 75
    aput-boolean v2, v0, v2

    return-void
.end method
