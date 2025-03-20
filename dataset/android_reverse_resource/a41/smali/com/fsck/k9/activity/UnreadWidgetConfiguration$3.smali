.class Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;
.super Ljava/lang/Object;
.source "UnreadWidgetConfiguration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseFolder_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-static {v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->access$200(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "com.fsck.k9.ChooseFolder_showDisplayableOnly"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    const/4 v1, 0x0

    return v1
.end method
