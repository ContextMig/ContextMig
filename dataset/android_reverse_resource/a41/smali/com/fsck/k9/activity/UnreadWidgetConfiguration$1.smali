.class Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;
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
    .line 80
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const-class v2, Lcom/fsck/k9/activity/ChooseAccount;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    const/4 v1, 0x0

    return v1
.end method
