.class public Lorg/secuso/privacyfriendlytodolist/view/HelpActivity$HelpFragment;
.super Landroid/preference/PreferenceFragment;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f110000

    .line 95
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity$HelpFragment;->addPreferencesFromResource(I)V

    return-void
.end method
