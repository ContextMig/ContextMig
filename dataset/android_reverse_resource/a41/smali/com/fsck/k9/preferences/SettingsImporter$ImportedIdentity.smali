.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportedIdentity"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
