.class public Lcom/dropbox/sync/android/DbxAccountManager$ConfigurationMismatchException;
.super Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
.source "DbxAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationMismatchException"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    .line 548
    return-void
.end method
