.class final enum Lcom/dropbox/sync/android/DbxError;
.super Ljava/lang/Enum;
.source "DbxError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxError$1;,
        Lcom/dropbox/sync/android/DbxError$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxError;

.field public static final enum ACCESS_DENIED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum ALREADY_OPEN:Lcom/dropbox/sync/android/DbxError;

.field public static final enum AUTH:Lcom/dropbox/sync/android/DbxError;

.field public static final enum BAD_INDEX:Lcom/dropbox/sync/android/DbxError;

.field public static final enum BAD_STATE:Lcom/dropbox/sync/android/DbxError;

.field public static final enum BAD_TYPE:Lcom/dropbox/sync/android/DbxError;

.field public static final enum CACHE:Lcom/dropbox/sync/android/DbxError;

.field public static final enum CANCELLED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum CLOSED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum CONNECTION:Lcom/dropbox/sync/android/DbxError;

.field public static final enum DELETED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum DISALLOWED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum DISKSPACE:Lcom/dropbox/sync/android/DbxError;

.field public static final enum EXISTS:Lcom/dropbox/sync/android/DbxError;

.field public static final enum FILE_IO:Lcom/dropbox/sync/android/DbxError;

.field public static final enum ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

.field public static final enum INTERNAL:Lcom/dropbox/sync/android/DbxError;

.field public static final enum INVALID_OPERATION:Lcom/dropbox/sync/android/DbxError;

.field public static final enum MEMORY:Lcom/dropbox/sync/android/DbxError;

.field public static final enum NETWORK:Lcom/dropbox/sync/android/DbxError;

.field public static final enum NOT_CACHED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum NOT_FOUND:Lcom/dropbox/sync/android/DbxError;

.field public static final enum NO_THUMB:Lcom/dropbox/sync/android/DbxError;

.field public static final enum PACKAGE_MANAGER_OPERATION_FAILED:Lcom/dropbox/sync/android/DbxError;

.field public static final enum PARENT:Lcom/dropbox/sync/android/DbxError;

.field public static final enum QUOTA:Lcom/dropbox/sync/android/DbxError;

.field public static final enum READ_ONLY:Lcom/dropbox/sync/android/DbxError;

.field public static final enum REQUEST:Lcom/dropbox/sync/android/DbxError;

.field public static final enum RESPONSE:Lcom/dropbox/sync/android/DbxError;

.field public static final enum RETRY_LATER:Lcom/dropbox/sync/android/DbxError;

.field public static final enum SERVER:Lcom/dropbox/sync/android/DbxError;

.field public static final enum SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

.field public static final enum SIZE_LIMIT:Lcom/dropbox/sync/android/DbxError;

.field public static final enum SSL:Lcom/dropbox/sync/android/DbxError;

.field public static final enum SYSTEM:Lcom/dropbox/sync/android/DbxError;

.field private static TAG:Ljava/lang/String;

.field public static final enum TIMEOUT:Lcom/dropbox/sync/android/DbxError;

.field private static final sInstancesByCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/dropbox/sync/android/DbxError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategory:Lcom/dropbox/sync/android/DbxError$Category;

.field private final mDescription:Ljava/lang/String;

.field private final mNativeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/dropbox/sync/android/DbxError;

    const-string v1, "INTERNAL"

    const/16 v3, -0x3e8

    sget-object v4, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v5, "Internal error"

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxError;->INTERNAL:Lcom/dropbox/sync/android/DbxError;

    .line 19
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "CACHE"

    const/16 v6, -0x3e9

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Cache error"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->CACHE:Lcom/dropbox/sync/android/DbxError;

    .line 22
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "SHUTDOWN"

    const/16 v6, -0x3ea

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Already shut down"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

    .line 25
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "CLOSED"

    const/16 v6, -0x3eb

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Already closed"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->CLOSED:Lcom/dropbox/sync/android/DbxError;

    .line 29
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "DELETED"

    const/16 v6, -0x3ec

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Deleted"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->DELETED:Lcom/dropbox/sync/android/DbxError;

    .line 32
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "BAD_TYPE"

    const/4 v5, 0x5

    const/16 v6, -0x3ef

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Value is of the wrong type"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->BAD_TYPE:Lcom/dropbox/sync/android/DbxError;

    .line 36
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "SIZE_LIMIT"

    const/4 v5, 0x6

    const/16 v6, -0x3f0

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Size limit exceeded"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->SIZE_LIMIT:Lcom/dropbox/sync/android/DbxError;

    .line 39
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "BAD_INDEX"

    const/4 v5, 0x7

    const/16 v6, -0x3f1

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Index is out of bounds"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->BAD_INDEX:Lcom/dropbox/sync/android/DbxError;

    .line 42
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "ILLEGAL_ARGUMENT"

    const/16 v5, 0x8

    const/16 v6, -0x3f2

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Illegal argument"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

    .line 45
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "BAD_STATE"

    const/16 v5, 0x9

    const/16 v6, -0x3f3

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Object is in a bad state"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->BAD_STATE:Lcom/dropbox/sync/android/DbxError;

    .line 48
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "ACCESS_DENIED"

    const/16 v5, 0xa

    const/16 v6, -0x3f4

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Access denied -- must be OWNER or EDITOR"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->ACCESS_DENIED:Lcom/dropbox/sync/android/DbxError;

    .line 51
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "MEMORY"

    const/16 v5, 0xb

    const/16 v6, -0x76c

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Out of memory"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->MEMORY:Lcom/dropbox/sync/android/DbxError;

    .line 55
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "SYSTEM"

    const/16 v5, 0xc

    const/16 v6, -0x76d

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "System error"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->SYSTEM:Lcom/dropbox/sync/android/DbxError;

    .line 58
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "NOT_CACHED"

    const/16 v5, 0xd

    const/16 v6, -0x7d0

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Not cached"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->NOT_CACHED:Lcom/dropbox/sync/android/DbxError;

    .line 65
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "INVALID_OPERATION"

    const/16 v5, 0xe

    const/16 v6, -0x2710

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Invalid operation attempted"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->INVALID_OPERATION:Lcom/dropbox/sync/android/DbxError;

    .line 68
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "NOT_FOUND"

    const/16 v5, 0xf

    const/16 v6, -0x2711

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Path doesn\'t exist"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->NOT_FOUND:Lcom/dropbox/sync/android/DbxError;

    .line 71
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "EXISTS"

    const/16 v5, 0x10

    const/16 v6, -0x2712

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Already exists"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->EXISTS:Lcom/dropbox/sync/android/DbxError;

    .line 74
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "ALREADY_OPEN"

    const/16 v5, 0x11

    const/16 v6, -0x2713

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Already open"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->ALREADY_OPEN:Lcom/dropbox/sync/android/DbxError;

    .line 77
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "PARENT"

    const/16 v5, 0x12

    const/16 v6, -0x2714

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Parent path doesn\'t exist or isn\'t a directory"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->PARENT:Lcom/dropbox/sync/android/DbxError;

    .line 81
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "DISKSPACE"

    const/16 v5, 0x13

    const/16 v6, -0x2716

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Out of disk space"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->DISKSPACE:Lcom/dropbox/sync/android/DbxError;

    .line 84
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "DISALLOWED"

    const/16 v5, 0x14

    const/16 v6, -0x2717

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "App is not allowed access"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->DISALLOWED:Lcom/dropbox/sync/android/DbxError;

    .line 87
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "FILE_IO"

    const/16 v5, 0x15

    const/16 v6, -0x2718

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "File I/O error"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->FILE_IO:Lcom/dropbox/sync/android/DbxError;

    .line 90
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "CANCELLED"

    const/16 v5, 0x16

    const/16 v6, -0x2719

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Cancelled"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->CANCELLED:Lcom/dropbox/sync/android/DbxError;

    .line 93
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "READ_ONLY"

    const/16 v5, 0x17

    const/16 v6, -0x271a

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Read only"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->READ_ONLY:Lcom/dropbox/sync/android/DbxError;

    .line 96
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "PACKAGE_MANAGER_OPERATION_FAILED"

    const/16 v5, 0x18

    const/16 v6, -0x271b

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Package manager operation failed"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->PACKAGE_MANAGER_OPERATION_FAILED:Lcom/dropbox/sync/android/DbxError;

    .line 101
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "NETWORK"

    const/16 v5, 0x19

    const/16 v6, -0x2af8

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Network error"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->NETWORK:Lcom/dropbox/sync/android/DbxError;

    .line 104
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "TIMEOUT"

    const/16 v5, 0x1a

    const/16 v6, -0x2af9

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Network timeout"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->TIMEOUT:Lcom/dropbox/sync/android/DbxError;

    .line 107
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "CONNECTION"

    const/16 v5, 0x1b

    const/16 v6, -0x2afa

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "No network connection"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->CONNECTION:Lcom/dropbox/sync/android/DbxError;

    .line 111
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "SSL"

    const/16 v5, 0x1c

    const/16 v6, -0x2afb

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "SSL error"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->SSL:Lcom/dropbox/sync/android/DbxError;

    .line 117
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "SERVER"

    const/16 v5, 0x1d

    const/16 v6, -0x2afc

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Server error"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->SERVER:Lcom/dropbox/sync/android/DbxError;

    .line 120
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "AUTH"

    const/16 v5, 0x1e

    const/16 v6, -0x2afd

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Not authenticated"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->AUTH:Lcom/dropbox/sync/android/DbxError;

    .line 123
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "QUOTA"

    const/16 v5, 0x1f

    const/16 v6, -0x2afe

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Quota exceeded"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->QUOTA:Lcom/dropbox/sync/android/DbxError;

    .line 126
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "REQUEST"

    const/16 v5, 0x20

    const/16 v6, -0x2b00

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Invalid server request"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->REQUEST:Lcom/dropbox/sync/android/DbxError;

    .line 129
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "RESPONSE"

    const/16 v5, 0x21

    const/16 v6, -0x2b01

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Invalid response from server"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->RESPONSE:Lcom/dropbox/sync/android/DbxError;

    .line 132
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "RETRY_LATER"

    const/16 v5, 0x22

    const/16 v6, -0x2b02

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "Exceeded rate limit"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->RETRY_LATER:Lcom/dropbox/sync/android/DbxError;

    .line 138
    new-instance v3, Lcom/dropbox/sync/android/DbxError;

    const-string v4, "NO_THUMB"

    const/16 v5, 0x23

    const/16 v6, -0x2ee0

    sget-object v7, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    const-string v8, "No thumbnail"

    invoke-direct/range {v3 .. v8}, Lcom/dropbox/sync/android/DbxError;-><init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V

    sput-object v3, Lcom/dropbox/sync/android/DbxError;->NO_THUMB:Lcom/dropbox/sync/android/DbxError;

    .line 12
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxError;

    sget-object v1, Lcom/dropbox/sync/android/DbxError;->INTERNAL:Lcom/dropbox/sync/android/DbxError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxError;->CACHE:Lcom/dropbox/sync/android/DbxError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/sync/android/DbxError;->SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/sync/android/DbxError;->CLOSED:Lcom/dropbox/sync/android/DbxError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/sync/android/DbxError;->DELETED:Lcom/dropbox/sync/android/DbxError;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->BAD_TYPE:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->SIZE_LIMIT:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->BAD_INDEX:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->BAD_STATE:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->ACCESS_DENIED:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->MEMORY:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->SYSTEM:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->NOT_CACHED:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->INVALID_OPERATION:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->NOT_FOUND:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->EXISTS:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->ALREADY_OPEN:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->PARENT:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->DISKSPACE:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->DISALLOWED:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->FILE_IO:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->CANCELLED:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->READ_ONLY:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->PACKAGE_MANAGER_OPERATION_FAILED:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->NETWORK:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->TIMEOUT:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->CONNECTION:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->SSL:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->SERVER:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->AUTH:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->QUOTA:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->REQUEST:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->RESPONSE:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->RETRY_LATER:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dropbox/sync/android/DbxError;->NO_THUMB:Lcom/dropbox/sync/android/DbxError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/sync/android/DbxError;->$VALUES:[Lcom/dropbox/sync/android/DbxError;

    .line 156
    const-class v0, Lcom/dropbox/sync/android/DbxError;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxError;->TAG:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/dropbox/sync/android/DbxError;->makeErrorCodeMap()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxError;->sInstancesByCode:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/dropbox/sync/android/DbxError$Category;Ljava/lang/String;)V
    .locals 0
    .param p3, "nativeCode"    # I
    .param p4, "category"    # Lcom/dropbox/sync/android/DbxError$Category;
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dropbox/sync/android/DbxError$Category;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/dropbox/sync/android/DbxError;->mNativeCode:I

    .line 165
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxError;->mCategory:Lcom/dropbox/sync/android/DbxError$Category;

    .line 166
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxError;->mDescription:Ljava/lang/String;

    .line 167
    return-void
.end method

.method static exceptionFrom(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;
    .locals 4
    .param p0, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v1, "msgBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 224
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "fullMessage":Ljava/lang/String;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    sget-object v3, Lcom/dropbox/sync/android/DbxError;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/dropbox/sync/android/DbxError$1;->$SwitchMap$com$dropbox$sync$android$DbxError:[I

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 309
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 233
    :pswitch_0
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_1
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Cache;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Cache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_2
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_3
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Closed;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Closed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_4
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Deleted;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Deleted;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_5
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadType;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_6
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$SizeLimit;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$SizeLimit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_7
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadIndex;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadIndex;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_8
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_9
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_a
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$AccessDenied;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$AccessDenied;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_b
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Memory;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$Memory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_c
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_d
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$NotCached;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException$NotCached;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_e
    new-instance v2, Lcom/dropbox/sync/android/DbxException$InvalidOperation;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$InvalidOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_f
    new-instance v2, Lcom/dropbox/sync/android/DbxException$NotFound;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$NotFound;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_10
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Exists;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Exists;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_11
    new-instance v2, Lcom/dropbox/sync/android/DbxException$AlreadyOpen;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$AlreadyOpen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_12
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Parent;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Parent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_13
    new-instance v2, Lcom/dropbox/sync/android/DbxException$DiskSpace;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$DiskSpace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_14
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Disallowed;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Disallowed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :pswitch_15
    new-instance v2, Lcom/dropbox/sync/android/DbxException$FileIO;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$FileIO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_16
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Cancelled;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Cancelled;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :pswitch_17
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Network;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Network;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :pswitch_18
    new-instance v2, Lcom/dropbox/sync/android/DbxException$NetworkTimeout;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$NetworkTimeout;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_19
    new-instance v2, Lcom/dropbox/sync/android/DbxException$NetworkConnection;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$NetworkConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_1a
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Ssl;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Ssl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :pswitch_1b
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Server;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Server;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :pswitch_1c
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Unauthorized;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Unauthorized;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_1d
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Quota;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Quota;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :pswitch_1e
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Request;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :pswitch_1f
    new-instance v2, Lcom/dropbox/sync/android/DbxException$Response;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$Response;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :pswitch_20
    new-instance v2, Lcom/dropbox/sync/android/DbxException$RetryLater;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$RetryLater;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :pswitch_21
    new-instance v2, Lcom/dropbox/sync/android/DbxException$NoThumb;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$NoThumb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :pswitch_22
    new-instance v2, Lcom/dropbox/sync/android/DbxException$ReadOnly;

    invoke-direct {v2, v0, p3}, Lcom/dropbox/sync/android/DbxException$ReadOnly;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method static fromNative(I)Lcom/dropbox/sync/android/DbxError;
    .locals 2
    .param p0, "nativeCode"    # I

    .prologue
    .line 206
    sget-object v1, Lcom/dropbox/sync/android/DbxError;->sInstancesByCode:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxError;

    .line 207
    .local v0, "err":Lcom/dropbox/sync/android/DbxError;
    if-eqz v0, :cond_0

    .line 210
    .end local v0    # "err":Lcom/dropbox/sync/android/DbxError;
    :goto_0
    return-object v0

    .restart local v0    # "err":Lcom/dropbox/sync/android/DbxError;
    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->INTERNAL:Lcom/dropbox/sync/android/DbxError;

    goto :goto_0
.end method

.method private static makeErrorCodeMap()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/dropbox/sync/android/DbxError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v4, Landroid/util/SparseArray;

    invoke-static {}, Lcom/dropbox/sync/android/DbxError;->values()[Lcom/dropbox/sync/android/DbxError;

    move-result-object v5

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 322
    .local v4, "newMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/dropbox/sync/android/DbxError;>;"
    invoke-static {}, Lcom/dropbox/sync/android/DbxError;->values()[Lcom/dropbox/sync/android/DbxError;

    move-result-object v0

    .local v0, "arr$":[Lcom/dropbox/sync/android/DbxError;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 323
    .local v1, "err":Lcom/dropbox/sync/android/DbxError;
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxError;->getNativeCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 324
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxError;->getNativeCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 326
    .end local v1    # "err":Lcom/dropbox/sync/android/DbxError;
    :cond_1
    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/sync/android/DbxError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxError;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->$VALUES:[Lcom/dropbox/sync/android/DbxError;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxError;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/dropbox/sync/android/DbxError$Category;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxError;->mCategory:Lcom/dropbox/sync/android/DbxError$Category;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxError;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getNativeCode()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/dropbox/sync/android/DbxError;->mNativeCode:I

    return v0
.end method
