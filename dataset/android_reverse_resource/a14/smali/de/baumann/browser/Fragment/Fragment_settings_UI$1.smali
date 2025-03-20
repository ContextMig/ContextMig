.class Lde/baumann/browser/Fragment/Fragment_settings_UI$1;
.super Ljava/lang/Object;
.source "Fragment_settings_UI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Fragment/Fragment_settings_UI;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Fragment/Fragment_settings_UI;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_settings_UI;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_UI;

    iput-object p2, p0, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "restart_changed"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_UI$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_UI;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings_UI;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
