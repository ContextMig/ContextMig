.class public Lio/sentry/servlet/SentryServletRequestListener;
.super Ljava/lang/Object;
.source "SentryServletRequestListener.java"


# static fields
.field private static final THREAD_REQUEST:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/servlet/http/HttpServletRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/sentry/servlet/SentryServletRequestListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/servlet/SentryServletRequestListener;->logger:Lorg/slf4j/Logger;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/sentry/servlet/SentryServletRequestListener;->THREAD_REQUEST:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServletRequest()Ljavax/servlet/http/HttpServletRequest;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/sentry/servlet/SentryServletRequestListener;->THREAD_REQUEST:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method
