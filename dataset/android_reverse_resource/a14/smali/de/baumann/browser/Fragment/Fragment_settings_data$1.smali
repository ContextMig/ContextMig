.class Lde/baumann/browser/Fragment/Fragment_settings_data$1;
.super Ljava/lang/Object;
.source "Fragment_settings_data.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Fragment/Fragment_settings_data;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_settings_data;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-static {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$000(Lde/baumann/browser/Fragment/Fragment_settings_data;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 92
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-static {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$100(Lde/baumann/browser/Fragment/Fragment_settings_data;)V

    .line 93
    new-instance p1, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;

    iget-object v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-virtual {v0}, Lde/baumann/browser/Fragment/Fragment_settings_data;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Task/ExportWhitelistAdBlockTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
