.class final Lcom/fsck/k9/service/BootReceiver$1;
.super Landroid/content/Intent;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/BootReceiver;->purgeSchedule(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-void
.end method


# virtual methods
.method public filterEquals(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "other"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
