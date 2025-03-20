.class public Lcom/fsck/k9/preferences/Settings$V;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V"
.end annotation


# instance fields
.field public final description:Lcom/fsck/k9/preferences/Settings$SettingsDescription;

.field public final version:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/Integer;
    .param p2, "description"    # Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/fsck/k9/preferences/Settings$V;->version:Ljava/lang/Integer;

    .line 354
    iput-object p2, p0, Lcom/fsck/k9/preferences/Settings$V;->description:Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 355
    return-void
.end method
