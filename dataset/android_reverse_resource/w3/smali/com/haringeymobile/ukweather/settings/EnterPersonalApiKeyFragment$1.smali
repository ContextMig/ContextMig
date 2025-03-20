.class Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$personalKeyEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x41d56cc079ad19d5L    # 1.4377947907047017E9

    const-string v2, "com/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    iput-object p2, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->val$personalKeyEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->val$personalKeyEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 63
    iget-object v2, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->putPersonalApiKeyIntoSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 64
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;->this$0:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->dismiss()V

    .line 65
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method
