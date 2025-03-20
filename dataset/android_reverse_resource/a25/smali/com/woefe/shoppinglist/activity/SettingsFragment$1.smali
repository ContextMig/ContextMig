.class Lcom/woefe/shoppinglist/activity/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/SettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/SettingsFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/SettingsFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 72
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/SettingsFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/SettingsFragment;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/SettingsFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/SettingsFragment;

    const/16 v1, 0x7b

    invoke-virtual {v0, p1, v1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
