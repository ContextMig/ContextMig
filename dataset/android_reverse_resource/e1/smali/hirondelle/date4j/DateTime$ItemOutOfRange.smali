.class final Lhirondelle/date4j/DateTime$ItemOutOfRange;
.super Ljava/lang/RuntimeException;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemOutOfRange"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x420f688e62e1dcdcL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1363
    return-void
.end method
