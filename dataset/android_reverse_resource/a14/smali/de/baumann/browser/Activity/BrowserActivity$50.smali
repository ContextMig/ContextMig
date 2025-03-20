.class Lde/baumann/browser/Activity/BrowserActivity$50;
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

    .line 2146
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$50;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const p1, 0x7f0e00db

    if-eqz p2, :cond_0

    .line 2150
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$50;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$50;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2152
    :cond_0
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$50;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$50;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method
