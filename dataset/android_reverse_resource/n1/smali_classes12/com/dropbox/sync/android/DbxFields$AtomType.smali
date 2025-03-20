.class public final enum Lcom/dropbox/sync/android/DbxFields$AtomType;
.super Ljava/lang/Enum;
.source "DbxFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AtomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFields$AtomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum BOOLEAN:Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum BYTES:Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum DATE:Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum DOUBLE:Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum LONG:Lcom/dropbox/sync/android/DbxFields$AtomType;

.field public static final enum STRING:Lcom/dropbox/sync/android/DbxFields$AtomType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 165
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->LONG:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 170
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 176
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->STRING:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 182
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->BYTES:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 187
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    const-string v1, "DATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFields$AtomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->DATE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFields$AtomType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->LONG:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->STRING:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->BYTES:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/sync/android/DbxFields$AtomType;->DATE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$AtomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$AtomType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFields$AtomType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFields$AtomType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$AtomType;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFields$AtomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFields$AtomType;

    return-object v0
.end method
