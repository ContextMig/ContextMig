.class public Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDescriptionPair"
.end annotation


# instance fields
.field public final imported:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

.field public final original:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

.field public final overwritten:Z


# direct methods
.method private constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Z)V
    .locals 0
    .param p1, "original"    # Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    .param p2, "imported"    # Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    .param p3, "overwritten"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    .line 78
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    .line 79
    iput-boolean p3, p0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->overwritten:Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;ZLcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    .param p2, "x1"    # Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Z)V

    return-void
.end method
