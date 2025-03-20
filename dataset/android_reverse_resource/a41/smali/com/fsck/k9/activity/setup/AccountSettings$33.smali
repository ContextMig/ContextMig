.class Lcom/fsck/k9/activity/setup/AccountSettings$33;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$33;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 926
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$33;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/NotificationSetting;->setLedColor(I)V

    .line 927
    return-void
.end method
