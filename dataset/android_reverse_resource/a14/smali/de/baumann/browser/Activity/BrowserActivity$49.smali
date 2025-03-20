.class Lde/baumann/browser/Activity/BrowserActivity$49;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showSwitcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 2127
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$49;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const p1, 0x7f0e00d4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2131
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$49;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$49;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {v1, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2132
    invoke-static {v0}, Lde/baumann/browser/Unit/IntentUnit;->setSPChange(Z)V

    goto :goto_0

    .line 2134
    :cond_0
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$49;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$49;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {v1, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2135
    invoke-static {v0}, Lde/baumann/browser/Unit/IntentUnit;->setSPChange(Z)V

    :goto_0
    return-void
.end method
