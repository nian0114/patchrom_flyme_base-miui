.class Lcom/android/settings_ex/bU;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic kC:I

.field final synthetic kD:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;I)V
    .locals 0

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/android/settings_ex/bU;->kD:Lcom/android/settings_ex/DevelopmentSettings;

    iput p2, p0, Lcom/android/settings_ex/bU;->kC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/settings_ex/bU;->kD:Lcom/android/settings_ex/DevelopmentSettings;

    iget v1, p0, Lcom/android/settings_ex/bU;->kC:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->a(Lcom/android/settings_ex/DevelopmentSettings;I)V

    .line 1889
    return-void
.end method
