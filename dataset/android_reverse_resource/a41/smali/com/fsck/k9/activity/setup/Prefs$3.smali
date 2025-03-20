.class Lcom/fsck/k9/activity/setup/Prefs$3;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 340
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$3;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 342
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$3;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$300(Lcom/fsck/k9/activity/setup/Prefs;)Lcom/fsck/k9/preferences/TimePickerPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v1, 0x0

    return v1
.end method
