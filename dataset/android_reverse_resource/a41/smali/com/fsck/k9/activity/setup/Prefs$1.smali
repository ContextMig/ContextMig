.class Lcom/fsck/k9/activity/setup/Prefs$1;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/Prefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/Prefs;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$1;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs$1;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/Prefs;->access$000(Lcom/fsck/k9/activity/setup/Prefs;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method
