export const fetchJobs = () => (
    $.ajax({
        method: "GET",
        url: '/api/jobs'
    })
);

export const fetchJob = id => (
    $.ajax({
        method: "GET",
        url: `/api/jobs/${id}`
    })
);

export const createJob = job => (
    $.ajax({
        method: 'POST',
        url: '/api/jobs',
        data: { job }
    })
);