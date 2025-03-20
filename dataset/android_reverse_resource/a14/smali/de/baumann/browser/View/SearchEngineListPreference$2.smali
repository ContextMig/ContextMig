.class Lde/baumann/browser/View/SearchEngineListPreference$2;
.super Ljava/lang/Object;
.source "SearchEngineListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/SearchEngineListPreference;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SearchEngineListPreference;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    iput-object p2, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 56
    iget-object p2, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    invoke-virtual {p1}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0e00fb

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p2}, Lde/baumann/browser/Unit/BrowserUnit;->isURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object p1, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    invoke-virtual {p1}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0e00fc

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    invoke-virtual {v1}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object v0, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    invoke-virtual {v1}, Lde/baumann/browser/View/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    iget-object p2, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    iget-object v0, p0, Lde/baumann/browser/View/SearchEngineListPreference$2;->val$editText:Landroid/widget/EditText;

    invoke-static {p2, v0}, Lde/baumann/browser/View/SearchEngineListPreference;->access$100(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/view/View;)V

    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void
.end method
