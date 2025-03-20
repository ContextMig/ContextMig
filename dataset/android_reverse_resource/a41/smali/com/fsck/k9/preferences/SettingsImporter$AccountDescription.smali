.class public Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDescription"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final uuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->uuid:Ljava/lang/String;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
