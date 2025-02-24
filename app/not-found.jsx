// app/not-found.jsx
"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { ArrowLeft } from "lucide-react";

export default function NotFound() {
  const router = useRouter();

  useEffect(() => {
    // Redirect to homepage after 5 seconds
    const timeout = setTimeout(() => {
      router.push("/");
    }, 5000);

    return () => clearTimeout(timeout);
  }, [router]);

  return (
    <div className="flex flex-col items-center justify-center min-h-[100vh] px-4 text-center">
      <h1 className="text-6xl font-bold gradient-title mb-4">404</h1>
      <h2 className="text-2xl font-semibold mb-4">Page Not Found</h2>
      <p className="text-lg text-gray-600 mb-4">
        The page you are looking for does not exist.
      </p>
      <p className="text-gray-600 mb-8">Redirecting to home in 5 seconds...</p>

      <Link href="/">
        <button className="mt-6 px-6 py-3 flex items-center gap-2 bg-blue-600 text-white font-semibold rounded-lg shadow-lg hover:bg-blue-700 transition">
          <ArrowLeft size={20} />
          Go Home
        </button>
      </Link>
    </div>
  );
}
