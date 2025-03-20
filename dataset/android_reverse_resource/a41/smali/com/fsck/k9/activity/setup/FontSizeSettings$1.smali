.class Lcom/fsck/k9/activity/setup/FontSizeSettings$1;
.super Ljava/lang/Object;
.source "FontSizeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/FontSizeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/FontSizeSettings;

.field final synthetic val$summaryFormat:Ljava/lang/String;

.field final synthetic val$titleFormat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/FontSizeSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/FontSizeSettings;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FontSizeSettings;

    iput-object p2, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->val$summaryFormat:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->val$titleFormat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    move-object v0, p1

    check-cast v0, Lcom/fsck/k9/activity/setup/SliderPreference;

    .local v0, "slider":Lcom/fsck/k9/activity/setup/SliderPreference;
    move-object v1, p2

    .line 140
    check-cast v1, Ljava/lang/Float;

    .line 141
    .local v1, "value":Ljava/lang/Float;
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->val$summaryFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FontSizeSettings;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->access$000(Lcom/fsck/k9/activity/setup/FontSizeSettings;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/setup/SliderPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;->val$titleFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/setup/SliderPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return v6
.end method
