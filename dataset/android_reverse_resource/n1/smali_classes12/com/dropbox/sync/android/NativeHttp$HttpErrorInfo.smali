.class Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
.super Ljava/lang/Object;
.source "NativeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpErrorInfo"
.end annotation


# instance fields
.field public final dbxError:Lcom/dropbox/sync/android/DbxError;

.field public final logLevel:I


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxError;I)V
    .locals 0
    .param p1, "dbxError"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "logLevel"    # I

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->dbxError:Lcom/dropbox/sync/android/DbxError;

    .line 658
    iput p2, p0, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->logLevel:I

    .line 659
    return-void
.end method
