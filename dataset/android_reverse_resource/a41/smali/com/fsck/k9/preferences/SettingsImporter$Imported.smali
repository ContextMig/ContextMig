.class Lcom/fsck/k9/preferences/SettingsImporter$Imported;
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
    name = "Imported"
.end annotation


# instance fields
.field public accounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;",
            ">;"
        }
    .end annotation
.end field

.field public contentVersion:I

.field public globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
