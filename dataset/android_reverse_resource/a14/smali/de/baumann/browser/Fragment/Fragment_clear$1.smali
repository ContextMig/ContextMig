.class Lde/baumann/browser/Fragment/Fragment_clear$1;
.super Ljava/lang/Object;
.source "Fragment_clear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Fragment/Fragment_clear;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Fragment/Fragment_clear;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_clear;Landroid/support/design/widget/BottomSheetDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->this$0:Lde/baumann/browser/Fragment/Fragment_clear;

    iput-object p2, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    iput-object p3, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 54
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->this$0:Lde/baumann/browser/Fragment/Fragment_clear;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_clear;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Ninja4.db"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->deleteDatabase(Ljava/lang/String;)Z

    .line 55
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "restart_changed"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_clear$1;->this$0:Lde/baumann/browser/Fragment/Fragment_clear;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_clear;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
