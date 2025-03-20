.class public Lcom/batch/android/BatchActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field public static final EXTRA_DEEPLINK_KEY:Ljava/lang/String; = "deeplink"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 24
    invoke-static {p0}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    .line 26
    invoke-virtual {p0}, Lcom/batch/android/BatchActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "deeplink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Lcom/batch/android/BatchActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/BatchActionActivity;->finish()V

    .line 53
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    const/4 v1, 0x0

    const-string v2, "BatchActionActivity - Error while trying to open a deeplink"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/batch/android/BatchActionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v1}, Lcom/batch/android/BatchActionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    return-void
.end method
