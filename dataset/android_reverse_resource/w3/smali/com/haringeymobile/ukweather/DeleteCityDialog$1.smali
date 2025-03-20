.class Lcom/haringeymobile/ukweather/DeleteCityDialog$1;
.super Ljava/lang/Object;
.source "DeleteCityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/DeleteCityDialog;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/DeleteCityDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x360180e5f002e041L    # -2.785667010000925E48

    const-string v2, "com/haringeymobile/ukweather/DeleteCityDialog$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/DeleteCityDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->this$0:Lcom/haringeymobile/ukweather/DeleteCityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->this$0:Lcom/haringeymobile/ukweather/DeleteCityDialog;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->access$000(Lcom/haringeymobile/ukweather/DeleteCityDialog;)Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;->this$0:Lcom/haringeymobile/ukweather/DeleteCityDialog;

    aput-boolean v4, v0, v4

    .line 105
    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "city id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;->onCityRecordDeletionConfirmed(I)V

    .line 107
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
