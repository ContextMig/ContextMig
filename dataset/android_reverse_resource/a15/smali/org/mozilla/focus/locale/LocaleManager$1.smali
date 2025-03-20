.class Lorg/mozilla/focus/locale/LocaleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LocaleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/locale/LocaleManager;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/locale/LocaleManager;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/locale/LocaleManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/locale/LocaleManager;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mozilla/focus/locale/LocaleManager$1;->this$0:Lorg/mozilla/focus/locale/LocaleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager$1;->this$0:Lorg/mozilla/focus/locale/LocaleManager;

    invoke-static {v1}, Lorg/mozilla/focus/locale/LocaleManager;->access$000(Lorg/mozilla/focus/locale/LocaleManager;)Ljava/util/Locale;

    move-result-object v0

    .line 92
    .local v0, "current":Ljava/util/Locale;
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager$1;->this$0:Lorg/mozilla/focus/locale/LocaleManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lorg/mozilla/focus/locale/LocaleManager;->access$002(Lorg/mozilla/focus/locale/LocaleManager;Ljava/util/Locale;)Ljava/util/Locale;

    .line 93
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager$1;->this$0:Lorg/mozilla/focus/locale/LocaleManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/mozilla/focus/locale/LocaleManager;->access$102(Lorg/mozilla/focus/locale/LocaleManager;Z)Z

    .line 95
    const-string v1, "GeckoLocales"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System locale changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/focus/locale/LocaleManager$1;->this$0:Lorg/mozilla/focus/locale/LocaleManager;

    invoke-static {v3}, Lorg/mozilla/focus/locale/LocaleManager;->access$000(Lorg/mozilla/focus/locale/LocaleManager;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
