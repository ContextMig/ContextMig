.class Lde/baumann/browser/Fragment/Fragment_settings_data$11;
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

.field final synthetic val$db_data:Ljava/io/File;

.field final synthetic val$db_sd:Ljava/io/File;

.field final synthetic val$pv_data:Ljava/io/File;

.field final synthetic val$pv_sd:Ljava/io/File;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_settings_data;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iput-object p2, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_sd:Ljava/io/File;

    iput-object p3, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_data:Ljava/io/File;

    iput-object p4, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_sd:Ljava/io/File;

    iput-object p5, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_data:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-static {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$000(Lde/baumann/browser/Fragment/Fragment_settings_data;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 253
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 254
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0e0104

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iget-object v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_sd:Ljava/io/File;

    iget-object v1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_data:Ljava/io/File;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$200(Lde/baumann/browser/Fragment/Fragment_settings_data;Ljava/io/File;Ljava/io/File;)V

    .line 259
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iget-object v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_sd:Ljava/io/File;

    iget-object v1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_data:Ljava/io/File;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$200(Lde/baumann/browser/Fragment/Fragment_settings_data;Ljava/io/File;Ljava/io/File;)V

    .line 260
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-static {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$300(Lde/baumann/browser/Fragment/Fragment_settings_data;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iget-object v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_sd:Ljava/io/File;

    iget-object v1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$pv_data:Ljava/io/File;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$200(Lde/baumann/browser/Fragment/Fragment_settings_data;Ljava/io/File;Ljava/io/File;)V

    .line 265
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    iget-object v0, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_sd:Ljava/io/File;

    iget-object v1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->val$db_data:Ljava/io/File;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$200(Lde/baumann/browser/Fragment/Fragment_settings_data;Ljava/io/File;Ljava/io/File;)V

    .line 266
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings_data$11;->this$0:Lde/baumann/browser/Fragment/Fragment_settings_data;

    invoke-static {p1}, Lde/baumann/browser/Fragment/Fragment_settings_data;->access$300(Lde/baumann/browser/Fragment/Fragment_settings_data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
