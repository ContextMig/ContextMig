.class Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;
.super Ljava/lang/Object;
.source "UnreadWidgetConfiguration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 90
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-static {v0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->access$000(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const v2, 0x7f0703b0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;->this$0:Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->access$102(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    return v0
.end method
