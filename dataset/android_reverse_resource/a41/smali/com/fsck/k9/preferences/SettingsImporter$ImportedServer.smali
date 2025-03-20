.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;
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
    name = "ImportedServer"
.end annotation


# instance fields
.field public authenticationType:Lcom/fsck/k9/mail/AuthType;

.field public clientCertificateAlias:Ljava/lang/String;

.field public connectionSecurity:Ljava/lang/String;

.field public extras:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

.field public host:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
