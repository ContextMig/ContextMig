.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
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
    name = "ImportedAccount"
.end annotation


# instance fields
.field public folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;",
            ">;"
        }
    .end annotation
.end field

.field public identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public incoming:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

.field public name:Ljava/lang/String;

.field public outgoing:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

.field public settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

.field public uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
