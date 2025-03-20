.class Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;
.super Lcom/dropbox/sync/android/DbxException$Unauthorized;
.source "DbxAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObsoleteDataException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxException$Unauthorized;-><init>(Ljava/lang/String;)V

    .line 682
    return-void
.end method
