.class final Lhirondelle/date4j/DateTime$MissingItem;
.super Ljava/lang/RuntimeException;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6623db4cc961770bL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1370
    return-void
.end method
