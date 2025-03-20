.class Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;
.super Ljava/lang/Object;
.source "EnterPersonalApiKeyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x394cecac839472f8L    # -3.8689695522766435E32

    const-string v2, "com/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->access$000(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;)Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;->onCancelUpdatingPersonalApiKey()V

    aput-boolean v2, v0, v2

    .line 54
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;->this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->dismiss()V

    .line 55
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
